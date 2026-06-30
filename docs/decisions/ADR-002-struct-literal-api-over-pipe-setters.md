# ADR-002: Struct-Literal Building API over Per-Property Pipe Setters

## Status
Accepted

## Date
2026-06-30

## Context

[ADR-001](ADR-001-build-time-codegen-committed-artifacts.md) committed us to
generating one module per Schema.org Class, with every valid property (direct +
all inherited via `subClassOf`) **flattened** into the module so that
auto-complete on a type reveals exactly its valid properties.

The original v0.1 implementation expressed each property as a **pipe-friendly
setter function**:

```elixir
def name(%__MODULE__{} = thing, value), do: %{thing | name: value}
```

so a developer wrote `Product.new() |> Product.name("X") |> Product.offers(...)`.

Flattening + per-property functions produced **65,337 setter functions** across
1012 modules — because identical inherited setters (`Thing.name`, `Thing.url`, …)
are recompiled into ~1000 descendants. Measured cost (same compiler, same
machine, `elixirc` on the generated tree):

| Variant | Wall | CPU | BEAM on disk |
|---|---|---|---|
| Flattened setters (65k functions) | 13.7s | 49.5s | **312 MB** |
| Struct fields only (zero setters)  | 4.7s  | 10.2s | **20 MB** |

The setters account for **~75% of compile time and ~94% of the BEAM footprint**.
The 312 MB lands in every consumer's `_build` and is loaded at runtime.

Elixir has no inherited or shared *remote-callable* functions: to call
`Product.name/2`, the function must be physically defined in `Product`. No
`import`, `defdelegate`, or `use` avoids this — they all expand to the same N
definitions per module (often slower). So the function count is **intrinsic to
the named-setter API**; it cannot be meaningfully reduced while keeping that API.

This is the cost driver. The *module count* (1012) is intentionally kept — it
powers `SchemaOrg.<complete>` type discovery and is cheap (the 20 MB / 4.7 s
row already includes all 1012 structs).

## Decision

Drop the per-property setter functions. Generate each type as a **plain struct**
(`defstruct` with all flattened property fields) plus `new/0` and the runtime
metadata function `__schema_org__/0`. Build values with **struct literals**:

```elixir
%SchemaOrg.Product{
  name: "MacBook Pro",
  offers: %SchemaOrg.Offer{price: 1999.0}
}
```

This is a **performance-driven** decision: it trades the pipe-setter ergonomics
for a ~75% smaller compile and a ~94% smaller BEAM footprint, while preserving
every developer-experience property that matters:

- **Type discovery** — `SchemaOrg.<complete>` still lists all 1012 modules.
- **Property auto-complete** — inside `%Product{ | }` the LSP completes the
  field list, exactly as it completed setter names before.
- **Compile-time validity** — `%Product{not_a_field: 1}` is a compile error via
  `defstruct`, the same guarantee the missing-setter gave.
- **Runtime unchanged** — `to_map/1`/`to_json_ld/1` already read struct fields +
  `__schema_org__/0`; no serialiser change. `@json_keys` stays keyed by the
  field atom (`func` was always `Atom.to_string(field)`).

### How this preserves Schema.org's loose value model

Schema.org properties accept "a scalar OR a struct" and "one OR many" almost
everywhere. A **struct field is untyped (`any()`)**, so this is satisfied for
free — and more cleanly than setters ever could:

- `%Product{brand: "Apple"}` and `%Product{brand: %Brand{name: "Apple"}}` both
  work; `encode_value/1` passes scalars through and recurses into structs.
- `%Product{offers: %Offer{}}` and `%Product{offers: [%Offer{}, %Offer{}]}` both
  work; `encode_value/1` maps over lists element-wise.

Normalisation lives in `to_map/1`/`encode_value/1` (per the standard "accept
`any()`, normalise at serialisation" guidance), not in the constructors.

## Alternatives Considered

### Keep the pipe setters
- Pros: the fluent `|> Product.name(...)` style; no API churn.
- Cons: 312 MB BEAM and 3× compile are intrinsic to it (see Context) and cannot
  be optimised away without abandoning the named-setter shape.
- Rejected: the cost is paid by every consumer on every clean build and at load
  time; the pipe style is not worth a 15× footprint.

### Single generic pipe setter — `Product.new() |> SchemaOrg.put(:name, v)`
- Pros: keeps a pipe flow; one function total.
- Cons: the `:name` atom argument does **not** auto-complete, and validity moves
  to runtime (`put` can't reject an unknown field at compile time).
- Rejected: loses the two DX guarantees (per-property auto-complete + compile
  error on invalid fields) that are the point of the library.

### Shave the setter body / lazy `@doc`
- Pros: no API change.
- Cons: ~20–30% at best; doesn't touch the order-of-magnitude footprint problem.
- Rejected: insufficient.

## Consequences

- **Public API change.** Building moves from `Type.new() |> Type.prop(v)` to
  `%SchemaOrg.Type{prop: v}`. README, moduledoc, and tests are updated; the
  package description no longer claims "pipe-friendly setters."
- **No incremental plural helpers** (`add_image/2`). Lists are passed directly
  (`image: ["a", "b"]`); incremental building is plain Elixir
  (`image: existing ++ [new]`). Acceptable given the pipe is gone.
- **`new/0` is retained** (cheap, 1 function/module) for callers who prefer
  `Product.new()` over `%Product{}`; both are equivalent.
- **We still do not implement `Jason.Encoder`** for the structs. Serialisation
  is funnelled through `to_json_ld/1`/`to_map/1`; calling `Jason.encode!/1`
  directly on a raw struct will not normalise. This is intentional and noted so
  it isn't mistaken for a bug; implementing the protocol is a candidate
  follow-up if direct-encode ergonomics are ever requested.
- **`rangeIncludes` validation remains out of scope** (per spec 01). Untyped
  struct fields accept any value, matching Schema.org's deliberate looseness.
- Supersedes the *API portion* of spec 01's "EEx Template Structure" and
  "Runtime DX" sections; the generation/inheritance model from ADR-001 is
  unchanged.
