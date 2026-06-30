# ADR-004: HTML Embedding via a Dependency-Free Helper + Optional Phoenix Component

## Status
Accepted

## Date
2026-06-30

## Context

`to_json_ld/1` produces a JSON string, but the real "last mile" for users is
getting it onto a page inside `<script type="application/ld+json">…</script>`.
Two problems make a naive `"<script>#{json}</script>"` interpolation wrong:

1. **Injection / breakage.** If any field value contains the substring
   `</script>` (a review body, an article title, user-supplied text), it closes
   the tag early — broken markup and an XSS vector.
2. **Ergonomics.** Every consumer re-implements the wrapping, and Phoenix users
   additionally need `Phoenix.HTML.raw/1` to avoid double-escaping.

The audience skews Phoenix, so a function component (`<.json_ld data={…} />`) is
the idiomatic ask. But the library's defining trait is a tiny footprint — its
only hard runtime dependency is `:jason`. Plain web apps, JSON APIs emitting
structured data, sitemap/static-site tooling, etc. should not be forced to pull
in the Phoenix stack.

## Decision

Two layers:

1. **`SchemaOrg.to_script_tag/1`** — a **dependency-free** function returning the
   full `<script type="application/ld+json">…</script>` string. The JSON is
   encoded with `Jason.encode!(…, escape: :html_safe)`, which emits `<` as a
   unicode escape — neutralising `</script>` and `<!--` while remaining valid
   JSON that a JSON-LD parser reads back correctly. Works in any framework
   (Phoenix, plain EEx, Plug, static generators).

2. **`SchemaOrg.HTML.json_ld/1`** — a Phoenix function component wrapping
   `to_script_tag/1` with `Phoenix.HTML.raw/1`. The module is **conditionally
   compiled** (`if Code.ensure_loaded?(Phoenix.Component)`), and
   `:phoenix_live_view` is declared as an **optional** dependency. Phoenix
   consumers get `<SchemaOrg.HTML.json_ld data={…} />`; everyone else never
   pulls in Phoenix and never compiles the module.

## Alternatives Considered

### Make the component the only/primary API; depend on Phoenix directly
- Pros: simplest implementation; one obvious entry point.
- Cons: forces the Phoenix stack on every consumer, breaking the `:jason`-only
  footprint that is core to the library's value.
- Rejected.

### Ship the Phoenix integration as a separate package (`schema_org_phoenix`)
- Pros: clean dependency separation; no conditional compilation.
- Cons: a second package to version/release/document for ~30 lines of code;
  discovery friction. Optional-dep + conditional compilation is the established
  Elixir idiom (e.g. `phoenix_html`, `gettext`) and keeps it in one place.
- Rejected for now; revisit only if the Phoenix surface grows substantially.

### Manual escaping with `String.replace(json, "<", "\\u003c")`
- Pros: no reliance on Jason's escape modes.
- Cons: re-implements what `escape: :html_safe` already does correctly
  (including U+2028/U+2029); easy to under-escape.
- Rejected in favour of the built-in option.

## Consequences

- New public API: `to_script_tag/1` (universal) and `SchemaOrg.HTML.json_ld/1`
  (Phoenix-only). Shipped in 0.2.0.
- `:phoenix_live_view` appears as an **optional** dependency in the package
  metadata; it is fetched in this project's own dev/test env (so the component
  and its tests compile and run here) but never forced on consumers.
- The component module ships in the package (`lib/schema_org/html.ex`) but is a
  no-op for consumers without `Phoenix.Component`.
- Tests for the component are guarded by the same `Code.ensure_loaded?` check, so
  the suite stays green with or without the optional dependency present.
- If a richer Phoenix surface is ever needed, a dedicated package remains a
  clean future option.
