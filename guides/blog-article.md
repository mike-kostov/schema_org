# Single article

An article or blog post is the most common rich result. Use `BlogPosting` (or
`Article` / `NewsArticle`) with an `author` and a `publisher` carrying its logo.

```elixir
article = %SchemaOrg.BlogPosting{
  headline: "Shipping schema_org",
  description: "How we built a typed Schema.org library.",
  image: "https://example.com/cover.jpg",
  date_published: "2026-06-30",
  date_modified: "2026-06-30",
  author: %SchemaOrg.Person{name: "Mike Kostov", url: "https://example.com/mike"},
  publisher: %SchemaOrg.Organization{
    name: "Acme Inc.",
    logo: %SchemaOrg.ImageObject{url: "https://example.com/logo.png"}
  }
}

SchemaOrg.to_json_ld(article)
```

produces:

```json
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "Shipping schema_org",
  "description": "How we built a typed Schema.org library.",
  "image": "https://example.com/cover.jpg",
  "datePublished": "2026-06-30",
  "dateModified": "2026-06-30",
  "author": {
    "@type": "Person",
    "name": "Mike Kostov",
    "url": "https://example.com/mike"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Acme Inc.",
    "logo": { "@type": "ImageObject", "url": "https://example.com/logo.png" }
  }
}
```

Dates are passed through verbatim — use ISO 8601 strings (or
`Date.to_iso8601/1` / `DateTime.to_iso8601/1`). To attach media to the article,
see [Article with a video clip](article-with-video.md) and
[Article with an audio clip](article-with-audio.md).

## Embed it in a page

```elixir
SchemaOrg.to_script_tag(article)   # HTML-safe <script type="application/ld+json"> string
```

In a Phoenix HEEx template (needs `:phoenix_live_view`):

```heex
<SchemaOrg.HTML.json_ld data={@article} />
```
