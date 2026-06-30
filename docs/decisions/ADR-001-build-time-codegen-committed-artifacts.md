# ADR-001: Build-Time Code Generation, Committed as Artifacts

## Status
Accepted

## Date
2026-06-30

## Context

The Schema.org vocabulary is distributed as a single ~5 MB JSON-LD file
(`schemaorg-current-https.jsonld`) describing ~1000 Classes and their
properties. We want to expose this vocabulary to Elixir developers as a
strictly-typed API where editor auto-complete reveals exactly which properties a
type accepts and the compiler rejects the rest.

There are three plausible ways to turn the vocabulary into that API:

1. **Parse the graph at the library's compile time** (a macro, an
   `@external_resource`, or a module attribute that reads the file) and emit
   modules dynamically.
2. **Parse the graph at runtime** and validate/build dynamically against an
   in-memory representation of the vocabulary.
3. **Generate plain Elixir source ahead of time** with a maintainer-only Mix
   task, commit the generated `.ex` files to the repo, and ship them.

The decision is irreversible-ish: it determines the package's runtime
dependency surface, its compile cost for consumers, what ships in the Hex
tarball, and whether the generated API is reviewable in git.

## Decision

Adopt **option 3**: a maintainer-only `mix schema_org.build_types` task reads
the vendored graph, renders one module per Class through an EEx template
(`priv/templates/type.ex.eex`), and writes them to `lib/schema_org/types/`.
**The generated files are committed to git and shipped in the Hex package as
ordinary source — they are treated as reviewable artifacts, not build output.**

Hard constraints that follow:

- **No compile-time graph parsing.** The 5 MB file is read *only* when a
  maintainer runs the build task. The library's own compilation must never
  touch it — no `@external_resource`, no parsing macro, no module attribute
  that executes at compile time.
- **The graph and the build task do not ship.** The Hex package `files` list
  includes `lib/schema_org/` and `lib/schema_org.ex` but excludes `priv/`
  (the graph) and `lib/mix/` (the build task).
- **Generation is deterministic.** Classes and properties are sorted by name so
  re-running the task produces a stable, reviewable diff.
- **The only runtime dependency is `:jason`.** `:ex_doc` is dev-only.

## Alternatives Considered

### Option 1 — Compile-time graph parsing (macros / `@external_resource`)
- Pros: No committed generated files; the vocabulary is the single source of
  truth at all times; smaller repo.
- Cons: Every consumer pays the 5 MB parse + ~1000-module metaprogramming cost
  on every clean compile. The generated API is invisible in git — impossible to
  review or diff. Recompilation triggers are subtle and easy to get wrong.
- Rejected: Pushes a large, opaque, repeated cost onto every consumer and
  removes reviewability — the opposite of the project's DX goal.

### Option 2 — Runtime parsing and dynamic validation
- Pros: No code generation at all; one in-memory model.
- Cons: Loses the entire value proposition — no compile-time type safety, no
  per-type auto-complete (the API would be stringly-typed). Ships the 5 MB graph
  and parses it at boot.
- Rejected: Defeats the purpose. The whole point is that the *compiler* and the
  *editor* know the vocabulary.

## Consequences

- The repo contains 1000+ committed generated modules. They are large in count
  but trivial in content (a struct + setters), and a human can review the
  generator's diff rather than each file.
- Consumers pay a **compile-time cost proportional to the number of generated
  modules**, even for types they never use. This is the central trade-off of
  this ADR and is the subject of a follow-up decision on packaging/surface
  reduction (to be recorded as ADR-002).
- Updating to a new Schema.org release is a maintainer action: drop in the new
  graph, run `mix schema_org.build_types`, review the deterministic diff,
  commit. Consumers just bump the version.
- The runtime stays dependency-light and fast: no graph in memory, no parsing,
  just struct manipulation and `Jason.encode!/1`.
- `to_json_ld/1` depends on each generated module exporting `__schema_org__/0`
  (the field → camelCase map and `@type`); the template and the runtime are
  coupled through that contract.
