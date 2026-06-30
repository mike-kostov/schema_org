# ADR-003: Multi-Node `@graph` Serialisation

## Status
Accepted

## Date
2026-06-30

## Context

`to_json_ld/1` and `to_map/1` originally accepted a **single** struct and
produced a single JSON-LD node. But a real page often describes several
independent entities at once — a landing page typically carries an
`Organization`, a `WebSite`, a `BreadcrumbList`, and a `FAQPage`. The idiomatic
JSON-LD representation is one document with a top-level `@graph` array holding
each node, emitted in a single `<script type="application/ld+json">` tag.

With the single-struct API the only options were to emit multiple `<script>`
tags or to hand-assemble the `@graph` map — both awkward, and the second leaks
the wire format the library exists to hide. Writing the e-commerce/blog/landing
usage guides made this gap concrete: five of six scenarios are single-node, but
the landing page is not.

`@id`-based cross-referencing (one node pointing at another by identifier
instead of inlining it) is a related but larger feature — it requires an `@id`
mechanism on every generated struct — and stays out of scope here.

## Decision

Accept a **list** of structs in `to_json_ld/1` and `to_map/1`, wrapping the
nodes in a top-level `@graph`:

- `to_map([n1, n2, ...])` → `%{"@graph" => [to_map(n1), to_map(n2), ...]}`
- `to_json_ld([...])` → the above, plus the top-level `@context`, encoded.

Each node is **inlined** (a complete object), which is valid JSON-LD. The change
is additive and backward-compatible: the new clauses are guarded by
`is_list/1`, the single-struct behaviour is unchanged, and the list path reuses
the same per-struct `to_map/1` and `encode_value/1`. The single top-level
`@context` applies to every node in the graph.

## Alternatives Considered

### Keep single-struct only; document multiple `<script>` tags
- Pros: no API change.
- Cons: not how landing-page structured data is written in practice; search
  tooling and most CMS output use one `@graph` document. Pushes assembly onto
  the user.
- Rejected: the library should produce the idiomatic shape.

### Add `@id` cross-references now
- Pros: avoids repeating shared entities across nodes.
- Cons: needs an `@id` field on every generated struct (or a wrapper) plus a
  reference type — a much larger change to the generator and runtime.
- Deferred: inlined `@graph` is valid and covers the common case; `@id` linking
  is a candidate follow-up.

## Consequences

- New public capability: `SchemaOrg.to_json_ld(list)` / `to_map(list)`. Shipped
  in **0.2.0**. Documented in the moduledoc, README, and `guides/landing-page.md`.
- No `@id` linking yet: shared entities (e.g. the same `Organization` as both a
  graph node and an article's `publisher`) are repeated/inlined rather than
  referenced. Acceptable; flagged for a future ADR if demand appears.
- `to_map/1`'s typespec widens to `struct() | [struct()]`; existing single-node
  callers are unaffected.
