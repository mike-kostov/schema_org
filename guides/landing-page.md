# Complex landing page

A real landing page describes several **independent** things at once — the
organization behind the site, the site itself, a breadcrumb trail, an FAQ. The
idiomatic way to express this is a single JSON-LD document with a top-level
`@graph` array holding each node.

Pass a **list** of structs to `to_json_ld/1` (or `to_map/1`) and they are
wrapped in `@graph` automatically:

```elixir
nodes = [
  %SchemaOrg.Organization{
    name: "Acme Inc.",
    url: "https://example.com",
    logo: %SchemaOrg.ImageObject{url: "https://example.com/logo.png"},
    same_as: ["https://twitter.com/acme", "https://linkedin.com/company/acme"],
    contact_point: %SchemaOrg.ContactPoint{
      telephone: "+1-401-555-1212",
      contact_type: "customer service"
    }
  },
  %SchemaOrg.WebSite{name: "Acme", url: "https://example.com"},
  %SchemaOrg.BreadcrumbList{
    item_list_element: [
      %SchemaOrg.ListItem{position: 1, name: "Home", item: "https://example.com"},
      %SchemaOrg.ListItem{position: 2, name: "Pricing", item: "https://example.com/pricing"}
    ]
  },
  %SchemaOrg.FAQPage{
    main_entity: [
      %SchemaOrg.Question{
        name: "Is there a free trial?",
        accepted_answer: %SchemaOrg.Answer{text: "Yes, 14 days."}
      }
    ]
  }
]

SchemaOrg.to_json_ld(nodes)
```

produces:

```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Organization",
      "name": "Acme Inc.",
      "url": "https://example.com",
      "logo": { "@type": "ImageObject", "url": "https://example.com/logo.png" },
      "sameAs": ["https://twitter.com/acme", "https://linkedin.com/company/acme"],
      "contactPoint": {
        "@type": "ContactPoint",
        "telephone": "+1-401-555-1212",
        "contactType": "customer service"
      }
    },
    { "@type": "WebSite", "name": "Acme", "url": "https://example.com" },
    {
      "@type": "BreadcrumbList",
      "itemListElement": [
        { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://example.com" },
        { "@type": "ListItem", "position": 2, "name": "Pricing", "item": "https://example.com/pricing" }
      ]
    },
    {
      "@type": "FAQPage",
      "mainEntity": [
        {
          "@type": "Question",
          "name": "Is there a free trial?",
          "acceptedAnswer": { "@type": "Answer", "text": "Yes, 14 days." }
        }
      ]
    }
  ]
}
```

The top-level `@context` is emitted once and applies to every node in the
graph. The nodes here are **inlined**; cross-referencing shared entities by
`@id` (so the `Article` publisher points at the `Organization` node instead of
repeating it) is not yet supported — see the README roadmap.

## Embed it in a page

One `<script>` tag carries the whole graph:

```elixir
SchemaOrg.to_script_tag(nodes)   # HTML-safe <script type="application/ld+json"> string
```

In a Phoenix HEEx template (needs `:phoenix_live_view`):

```heex
<SchemaOrg.HTML.json_ld data={@nodes} />
```
