# SchemaOrg

A strictly-typed, pipe-friendly builder for generating SEO [Schema.org](https://schema.org)
JSON-LD in Elixir and Phoenix applications.

You should not have to memorise the Schema.org vocabulary. This library ships
**800+ generated struct modules** (`SchemaOrg.Product`, `SchemaOrg.Offer`, …),
each with one typed setter function per valid property — so your editor's
auto-complete tells you exactly which fields a type accepts.

```elixir
import SchemaOrg

Product.new()
|> Product.name("MacBook Pro")
|> Product.offers(
  Offer.new()
  |> Offer.price(1999.00)
  |> Offer.price_currency("USD")
)
|> to_json_ld()
```

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "MacBook Pro",
  "offers": { "@type": "Offer", "price": 1999.0, "priceCurrency": "USD" }
}
```

## Quick Start

```bash
mix deps.get          # fetch jason + ex_doc
mix compile           # compile the library and its generated types
mix test              # run the suite
```

## Commands

| Command | Description |
|---|---|
| `mix compile` | Compile the library and the generated type modules |
| `mix test` | Run the test suite |
| `mix test --failed` | Re-run only previously failing tests |
| `mix precommit` | Format check + compile (warnings as errors) + full test suite |
| `mix schema_org.build_types` | **Maintainer only** — regenerate `lib/schema_org/types/` from the vendored Schema.org graph |
| `mix docs` | Generate HTML documentation with ExDoc |

## Architecture

Two layers, one hand-written and one generated:

- **Runtime API** (`lib/schema_org.ex`, `lib/schema_org/thing.ex`) — hand-written.
  `SchemaOrg.to_json_ld/1` serialises any generated struct (recursively) into a
  `@context`/`@type`-annotated JSON-LD map and encodes it with Jason.
- **Generated types** (`lib/schema_org/types/`) — 800+ files, one per Schema.org
  Class. Each is an immutable struct plus a `new/0` constructor and one
  pipe-friendly setter per valid property. **Never edit these by hand** — they
  are produced by the code-generation task and overwritten on every run.
- **Code generation** (`lib/mix/tasks/schema_org.build_types.ex`) — a
  maintainer-only Mix task that ingests the official Schema.org JSON-LD graph
  (`priv/schemaorg-current-https.jsonld`), maps Properties onto Classes via
  `domainIncludes` and `subClassOf` inheritance, and renders each module through
  an EEx template (`priv/templates/type.ex.eex`).

```
priv/schemaorg-current-https.jsonld ──▶ mix schema_org.build_types ──▶ lib/schema_org/types/*.ex
                                              (EEx template)
```

## Documentation

| Path | Contents |
|---|---|
| `docs/specs/` | Feature specs — one file per capability, updated in place as scope evolves |
| `docs/plans/` | Implementation plans — one file per spec, task-by-task breakdown with acceptance criteria |
| `docs/decisions/` | Architecture Decision Records (ADRs) — immutable; record the *why* behind significant choices |
| `docs/ideas/` | Early problem framing, refined before a spec is written |

Current docs:

- [`docs/specs/01-type-generation.md`](docs/specs/01-type-generation.md) — Code-generation pipeline: JSON-LD parsing, EEx template, type module layout — **Draft**

## Schema.org in Plain Terms

Schema.org is a shared vocabulary that search engines (Google, Bing, Yandex)
understand. When you embed it as JSON-LD in a page, you are telling the crawler
"this page is about a *Product* called *MacBook Pro* that has an *Offer* of
*$1999*". That structured data is what powers rich results — star ratings,
price snippets, breadcrumbs, FAQ accordions.

The vocabulary is a **graph of Types (Classes) and Properties**:

- A **Type** is a thing you can describe — `Product`, `Person`, `Recipe`, `Event`.
- A **Property** is an attribute — `name`, `price`, `author`, `startDate`.
- Each property declares which types it is valid on (`domainIncludes`) and what
  kind of value it expects (`rangeIncludes`).
- Types form an inheritance tree (`subClassOf`): every type ultimately descends
  from `Thing`, so every type has `name`, `description`, `url`, and so on.

Writing this JSON by hand is error-prone — there are ~800 types and ~1500
properties, and putting a property on the wrong type produces silently-invalid
markup. This library turns that graph into typed Elixir so the compiler and your
editor catch mistakes before a crawler ever sees them.

---

## Abbreviations

| Abbreviation | Full name | What it means in this project |
|---|---|---|
| **JSON-LD** | JSON for Linking Data | The JSON-based serialisation of Schema.org that search engines read. The output format this library produces |
| **SEO** | Search Engine Optimisation | The reason structured data exists — richer, higher-ranking search results |
| **DX** | Developer Experience | The guiding goal of this package: typed, autocompletable, pipe-friendly APIs |
| **Class** | Schema.org Class | A describable type (`Product`, `Offer`). Becomes one generated Elixir module |
| **Property** | Schema.org Property | An attribute (`name`, `price`). Becomes one struct field + one setter function |
| **domainIncludes** | — | The Schema.org relation declaring which Classes a Property is valid on. Drives field→module mapping |
| **rangeIncludes** | — | The Schema.org relation declaring what value types a Property accepts |
| **EEx** | Embedded Elixir | The templating language used to render the generated `.ex` files |
