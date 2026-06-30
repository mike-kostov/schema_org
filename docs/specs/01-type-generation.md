# Spec: Schema.org Type Generation

**Status:** Implemented
**Last updated:** 2026-06-30
**Plan:** [`docs/plans/01-type-generation.md`](../plans/01-type-generation.md)
**Related ADRs:** [ADR-001](../decisions/ADR-001-build-time-codegen-committed-artifacts.md)

---

## Objective

Generate, from the official Schema.org JSON-LD vocabulary, a strictly-typed and
pipe-friendly Elixir API for building SEO structured data. The deliverable is:

- A **maintainer-only** Mix task `mix schema_org.build_types` that ingests the
  vendored `priv/schemaorg-current-https.jsonld` graph and writes one Elixir
  module per Schema.org Class into `lib/schema_org/types/`.
- **800+ generated struct modules** (`SchemaOrg.Product`, `SchemaOrg.Offer`, …),
  each with a `new/0` constructor and one immutable, pipe-friendly setter per
  valid property.
- A hand-written runtime serialiser `SchemaOrg.to_json_ld/1` that turns any such
  struct (recursively) into `@context`/`@type`-annotated JSON-LD.

The guiding goal is **Developer Experience**: a developer should never consult
the Schema.org website. Editor auto-complete on a type's module should reveal
exactly which properties are valid, and the compiler should reject the rest.

**Out of scope for this spec:** `rangeIncludes` value-type validation, `@id`
linking between nodes, multi-language `@value` literals, and any Phoenix view
helpers. These are candidate follow-up specs.

---

## Tech Stack

- Elixir ~> 1.19, OTP 28
- `jason` ~> 1.4 for JSON decode (build task) and encode (runtime)
- EEx (standard library) for rendering generated modules
- `ex_doc` (dev only) for documentation

---

## Non-Negotiable Constraints

1. **No compile-time spec parsing.** The 5MB graph is read only when the
   maintainer runs the build task. The library's own compilation must not touch
   it (no `@external_resource`, no parsing macros).
2. **Generated files are committed artifacts**, not build output — they ship in
   the Hex package and are reviewable in git. Re-running the task must produce a
   deterministic (sorted) diff.
3. **One module per file** — Elixir forbids cleanly nesting many modules per
   file; the generator emits `lib/schema_org/types/<snake>.ex` per Class.

---

## Source Data Model

The graph is `{"@context": …, "@graph": [ …nodes… ]}`. Relevant node shapes:

```jsonc
// A Class
{ "@id": "schema:Product", "@type": "rdfs:Class",
  "rdfs:subClassOf": { "@id": "schema:Thing" },
  "rdfs:comment": "Any offered product or service." }

// A Property
{ "@id": "schema:offers", "@type": "rdf:Property",
  "schema:domainIncludes": [ { "@id": "schema:Product" }, { "@id": "schema:Service" } ],
  "schema:rangeIncludes": { "@id": "schema:Offer" },
  "rdfs:comment": "An offer to provide this item." }
```

Three fields are **polymorphic** — each may be absent, a single `{"@id": …}`
object, or a list of them: `domainIncludes`, `rangeIncludes`, `subClassOf`. The
`@type` field may be a string or a list. All are normalised through one helper.

---

## Parsing Logic (`mix schema_org.build_types`)

1. **Decode** the JSON-LD file with Jason.
2. **Partition** `@graph` in a single pass into:
   - `classes` — nodes whose normalised `@type` includes `"rdfs:Class"`.
   - `properties` — nodes whose normalised `@type` includes `"rdf:Property"`.
3. **Direct domain map.** For each property, normalise `domainIncludes` to a list
   of class ids and attach the property to each.
4. **Inheritance.** Build a `subClassOf` parent map; for each class, walk
   ancestors transitively (visited-set guards the spec's diamond inheritance) and
   union in their properties. The MVP flattens direct + inherited properties into
   each struct so autocomplete is complete with zero runtime lookups.
5. **Sanitise names.**
   - Module: strip `schema:` → `SchemaOrg.<LocalName>`.
   - Field/function: `dateModified` → `:date_modified`; reserved words
     (`end`, `in`, `fn`, `when`, `do`, …) get a trailing underscore.
   - JSON key: keep the original camelCase (`dateModified`).
6. **Render** each class through `priv/templates/type.ex.eex` and write the file.
   Classes and their properties are sorted by name for deterministic output.

---

## EEx Template Structure (`priv/templates/type.ex.eex`)

Bindings: `module_name`, `schema_type`, `comment`, `field_atoms` (a rendered
list literal), and `properties` (list of `%{func, field, json_key, doc}`).

```elixir
defmodule SchemaOrg.<%= module_name %> do
  @moduledoc """<%= comment %>"""

  defstruct [:"__schema_type__", <%= field_atoms %>]

  @doc "Build an empty `<%= module_name %>`."
  def new, do: %__MODULE__{:"__schema_type__" => "<%= schema_type %>"}

<%= for p <- properties do %>  @doc """<%= p.doc %>"""
  def <%= p.func %>(%__MODULE__{} = thing, value) do
    %{thing | <%= p.field %>: value}
  end

<% end %>end
```

Immutability + pipe DX is inherent: each setter takes the struct first and
returns an updated copy. A private `__schema_org_meta__/0` (or a per-field
`@json_keys` map embedded in the module) records the field→camelCase mapping that
`to_json_ld/1` consumes at runtime.

---

## Runtime Serialisation (`SchemaOrg.to_json_ld/1`)

Hand-written, not generated:

1. Read the struct's `__schema_type__` and field→json-key map.
2. Drop `nil` fields and the internal `__schema_type__` key.
3. Re-key each set field to its camelCase JSON key.
4. Recurse into nested SchemaOrg structs and lists of them.
5. Add `"@type"`; at the top level add `"@context" => "https://schema.org"`.
6. Encode with `Jason.encode!/1` (a `to_map/1` variant returns the bare map).

---

## Verification (ExUnit)

- **Parser unit tests** (`test/schema_org/build_types_test.exs`) against a
  hand-built 2-class / 1-property fixture graph — assert `normalize_domains/1`
  collapses all three polymorphic shapes; assert `properties_for_class/2` maps
  the sample property onto the correct class; assert reserved-word and camelCase
  sanitising.
- **Render test** — assert the EEx output contains the expected `defmodule`,
  `defstruct`, `new/0`, and one setter clause, and that it compiles via
  `Code.compile_string/1`.
- **Runtime DX test** (`test/schema_org_test.exs`) — the canonical
  `Product |> name |> offers(Offer |> price)` pipe must serialise to the exact
  expected JSON-LD map.

---

## Success Criteria

- `mix schema_org.build_types` regenerates `lib/schema_org/types/` with no
  manual edits and a deterministic diff.
- The generated library compiles with `--warnings-as-errors`.
- The canonical Product/Offer example round-trips to valid JSON-LD.
- All parser, render, and runtime tests pass under `mix precommit`.
