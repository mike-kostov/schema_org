# Changelog

All notable changes to this project are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0] - 2026-06-30

Initial release.

### Added

- **Generated type modules** (`SchemaOrg.*`) — 1000+ struct modules, one per
  Schema.org Class, each with a `new/0` constructor and one immutable,
  pipe-friendly setter per valid property (direct + inherited). Produced by the
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
  [ADR-001](docs/decisions/ADR-001-build-time-codegen-committed-artifacts.md).
- Out of scope for this release: `rangeIncludes` value-type validation, `@id`
  node linking, multi-language `@value` literals, and Phoenix view helpers.

[Unreleased]: https://github.com/mike-kostov/schema_org/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/mike-kostov/schema_org/releases/tag/v0.1.0
