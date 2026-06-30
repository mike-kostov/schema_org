# Implementation Plan: Schema.org Type Generation

**Spec:** [`docs/specs/01-type-generation.md`](../specs/01-type-generation.md)
**Status:** Implemented (backfilled 2026-06-30)
**Related ADRs:** [ADR-001](../decisions/ADR-001-build-time-codegen-committed-artifacts.md)

> This plan was written retrospectively, after implementation, to close the
> documentation gap the spec flagged (`Plan: _to be written_`). It records the
> task breakdown and dependency order the build actually followed so future work
> has a verifiable map. Tasks below are checked because they shipped in v0.1.0.

## Overview

Generate a strictly-typed Elixir API for Schema.org from the official JSON-LD
vocabulary. Two layers: a maintainer-only build task that emits one committed
struct module per Class (built with struct literals, ADR-002), and a hand-written
runtime serialiser that turns those structs into JSON-LD. The guiding goal is Developer Experience — a
developer should never need to consult the Schema.org website.

## Architecture Decisions

- **Build-time generation, committed as artifacts; no compile-time graph
  parsing.** See [ADR-001](../decisions/ADR-001-build-time-codegen-committed-artifacts.md).
- **Flatten direct + inherited properties into each struct** so auto-complete is
  complete with zero runtime ancestor lookups.
- **Build via struct literals, not per-property pipe setters.** The flattened
  setters were the dominant compile/footprint cost (65k functions → 312 MB BEAM);
  removing them cut the footprint to ~20 MB while keeping field auto-complete. See
  [ADR-002](../decisions/ADR-002-struct-literal-api-over-pipe-setters.md).
- **One module per file**, since Elixir cannot cleanly nest many modules.
- **Runtime kept dependency-light:** `:jason` only; `:ex_doc` dev-only.

## Dependency Graph

```
Vendored graph (priv/schemaorg-current-https.jsonld)
    │
    ├── Build task pure functions (normalise / map / sanitise)   [Task 1]
    │       │
    │       ├── EEx template (type.ex.eex)                        [Task 2]
    │       │       │
    │       │       └── build_types task wiring + file writes     [Task 3]
    │       │               │
    │       │               └── Generated modules (committed)     [Task 4]
    │       │
    │       └── __schema_org__/0 contract  ◄──────────────┐
    │                                                       │
    └── Runtime serialiser (to_json_ld/1, to_map/1)  ───────┘      [Task 5]
                │
                └── Packaging (mix.exs files list, hex.build)      [Task 6]
```

Built bottom-up: pure transforms first, then the template that consumes them,
then the task that wires them to disk, then the runtime that reads the emitted
contract.

## Task List

### Phase 1: Generation Core

- [x] **Task 1 — Graph parsing pure functions.** Decode the JSON-LD; partition
  `@graph` into classes/properties; normalise the three polymorphic shapes
  (`domainIncludes`, `rangeIncludes`, `subClassOf`) and `@type` through one
  helper; build the direct domain map; walk `subClassOf` ancestors transitively
  with a visited-set (diamond-inheritance guard); sanitise names
  (module / field-atom / reserved-word / preserved camelCase JSON key).
  *Acceptance:* all transforms are pure and tested against small fixtures, no
  file I/O. *Scope: M.*

- [x] **Task 2 — EEx template.** `priv/templates/type.ex.eex` rendering
  `defmodule`, `@moduledoc`, `defstruct`, `new/0`, one setter per property, and
  the `__schema_org__/0` metadata (field → camelCase map + `@type`).
  *Acceptance:* render output compiles via `Code.compile_string/1`. *Scope: S.*

- [x] **Task 3 — `mix schema_org.build_types` task.** Wire Tasks 1–2: read graph,
  render each class, write `lib/schema_org/types/<snake>.ex`, sorted for
  deterministic diffs. *Acceptance:* re-running produces no diff. *Scope: M.*

### Checkpoint: Generation

- [x] Re-running the task yields a deterministic (empty) diff.
- [x] Generated tree compiles with `--warnings-as-errors`.

### Phase 2: Generated Output + Runtime

- [x] **Task 4 — Generate the full type set.** Run the task against the real
  graph; commit the 1000+ modules. *Scope: L (artifact).*

- [x] **Task 5 — Runtime serialiser.** `SchemaOrg.to_json_ld/1` and `to_map/1`:
  read `__schema_org__/0`, drop `nil`, re-key to camelCase, recurse into nested
  structs and lists, add `@type` (and top-level `@context`), encode with Jason.
  *Acceptance:* canonical `Product |> name |> offers(Offer |> price)` round-trips
  to the exact expected JSON-LD map. *Scope: S.*

### Checkpoint: Round-Trip

- [x] Canonical Product/Offer example serialises correctly.
- [x] Parser, render, and runtime tests pass under `mix precommit` (19 tests).

### Phase 3: Packaging

- [x] **Task 6 — Hex packaging.** `mix.exs` `files` ships `lib/schema_org/` +
  `lib/schema_org.ex` only; excludes `priv/` (graph) and `lib/mix/` (build task).
  Metadata, license, source_url. *Acceptance:* `mix hex.build` produces a valid
  tarball without the graph or build task. *Scope: S.*

### Checkpoint: Publish-Ready

- [x] `mix precommit` green.
- [x] `mix hex.build` produces a clean tarball.
- [ ] Documentation debt closed (this plan, ADR-001, CHANGELOG, spec status).
- [ ] `mix hex.publish` — pending human go-ahead.

## Risks and Mitigations

| Risk | Impact | Mitigation |
|------|--------|------------|
| Flattened per-property setters bloat compile/BEAM | High | Resolved by ADR-002 — struct-literal API, no setters (312 MB → 20 MB) |
| Module *count* (1000+) slows clean compiles | Med | Accepted; count is kept for `SchemaOrg.<complete>` discovery. Tiered/on-demand packaging is a candidate future spec, not v0.1 |
| Schema.org vocab drift on re-generation | Med | Deterministic sorted output → reviewable diff before commit |
| Template / runtime `__schema_org__/0` contract drift | Med | Round-trip test exercises the contract end-to-end |
| `String.to_atom/1` memory leak | Low | Atomise only the bounded vendored property set in the build task; never runtime user values |

## Open Questions

- Should consumers be able to avoid the clean-compile cost of types they don't
  use (tiered/curated default + on-demand generation)? Candidate future spec; the
  per-function cost is already resolved by ADR-002, so this is now only about the
  module *count*.
- Should `rangeIncludes` value-type validation become a follow-up spec?
