# Changelog

All notable changes to this project are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.0] - 2026-06-30

### Added

- **Multi-node `@graph` serialisation.** `to_json_ld/1` and `to_map/1` now accept
  a **list** of structs and wrap them in a single top-level `@graph` array — the
  idiomatic way to describe several independent nodes (e.g. a landing page's
  `Organization` + `WebSite` + `BreadcrumbList` + `FAQPage`) in one document.
  Backward-compatible (single-struct calls are unchanged). See
  [ADR-003](https://github.com/mike-kostov/schema_org/blob/main/docs/decisions/ADR-003-multi-node-graph-serialisation.md).
- **`to_script_tag/1`** — renders a struct (or list) as a complete, HTML-safe
  `<script type="application/ld+json">…</script>` string. Encoded with
  `escape: :html_safe`, so a value containing `</script>` cannot break out of
  the tag.
- **`SchemaOrg.HTML.json_ld/1`** — an optional Phoenix function component
  (`<SchemaOrg.HTML.json_ld data={@product} />`) wrapping `to_script_tag/1`.
  Compiled only when `Phoenix.Component` is available; `:phoenix_live_view` is an
  **optional** dependency, so non-Phoenix consumers never pull it in.
- **Usage guides** on HexDocs: e-commerce product, blog home, single article,
  article with video, article with audio, and a complex landing page. Each shows
  the struct-literal code and its exact JSON-LD output, verified by
  `test/examples_test.exs`.
- Generated `@moduledoc`s are now clean Markdown: Schema.org comment HTML
  (`<p>`, `<br>`, `<a>`, `<code>`) is converted/stripped and `[[wiki refs]]`
  become inline code, fixing an ExDoc "unclosed `<p>`" warning.

### Notes

- `@id` cross-node linking is still out of scope; `@graph` nodes are inlined.

## [0.1.0] - 2026-06-30

Initial release.

### Added

- **Generated type modules** (`SchemaOrg.*`) — 1000+ structs, one per Schema.org
  Class. Each is a plain struct (one field per valid property, direct +
  inherited) plus a `new/0` constructor. Build with struct literals
  (`%SchemaOrg.Product{name: "X", offers: %SchemaOrg.Offer{price: 1.0}}`) —
  fields auto-complete in the editor and the compiler rejects invalid ones. A
  field is untyped, so it accepts Schema.org's loose value model directly: a
  scalar or a nested struct, a single value or a list. Produced by the
  maintainer-only `mix schema_org.build_types` task and committed as reviewable
  artifacts; never hand-edited.
- **Runtime serialiser** — `SchemaOrg.to_json_ld/1` (encoded JSON-LD string with
  top-level `@context`) and `SchemaOrg.to_map/1` (bare map for embedding/tests).
  Recurses into nested SchemaOrg structs and lists, drops `nil` properties, and
  re-keys each field to its Schema.org camelCase name.
- **Maintainer build task** `mix schema_org.build_types` — ingests the vendored
  `priv/schemaorg-current-https.jsonld` graph and renders modules through
  `priv/templates/type.ex.eex`. Deterministic, sorted output. Not shipped in the
  Hex package.

### Notes

- The only runtime dependency is `:jason`. The ~5 MB source graph is read **only**
  by the build task — never at the library's compile time. See
  [ADR-001](https://github.com/mike-kostov/schema_org/blob/main/docs/decisions/ADR-001-build-time-codegen-committed-artifacts.md).
- The building API is **struct literals, not pipe setters** — a deliberate
  performance choice that cut the generated BEAM footprint from ~312 MB to ~20 MB
  and compile CPU by ~60%, while keeping full field auto-complete. See
  [ADR-002](https://github.com/mike-kostov/schema_org/blob/main/docs/decisions/ADR-002-struct-literal-api-over-pipe-setters.md).
- Out of scope for this release: `rangeIncludes` value-type validation, `@id`
  node linking, multi-language `@value` literals, and Phoenix view helpers.

[Unreleased]: https://github.com/mike-kostov/schema_org/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/mike-kostov/schema_org/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/mike-kostov/schema_org/releases/tag/v0.1.0
