# Blog main page

The landing page of a blog is a `Blog` node listing the publication and its
publisher. (Individual posts get their own markup — see
[Single article](blog-article.md).)

```elixir
blog = %SchemaOrg.Blog{
  name: "The Acme Blog",
  url: "https://example.com/blog",
  description: "Engineering notes from the Acme team.",
  publisher: %SchemaOrg.Organization{
    name: "Acme Inc.",
    logo: %SchemaOrg.ImageObject{url: "https://example.com/logo.png"}
  }
}

SchemaOrg.to_json_ld(blog)
```

produces:

```json
{
  "@context": "https://schema.org",
  "@type": "Blog",
  "name": "The Acme Blog",
  "url": "https://example.com/blog",
  "description": "Engineering notes from the Acme team.",
  "publisher": {
    "@type": "Organization",
    "name": "Acme Inc.",
    "logo": { "@type": "ImageObject", "url": "https://example.com/logo.png" }
  }
}
```

## A note on the sitelinks searchbox

Google's [sitelinks searchbox](https://developers.google.com/search/docs/appearance/structured-data/sitelinks-searchbox)
uses a `WebSite` with a `SearchAction` whose key is **`query-input`** — a
hyphenated key that is *not* a valid Elixir/Schema.org property field, so there
is no generated setter for it. Build the typed part with structs and merge the
one non-standard key into the map:

```elixir
site =
  %SchemaOrg.WebSite{
    name: "Acme",
    url: "https://example.com",
    potential_action: %SchemaOrg.SearchAction{
      target: "https://example.com/search?q={search_term_string}"
    }
  }
  |> SchemaOrg.to_map()
  |> put_in(["potentialAction", "query-input"], "required name=search_term_string")

# `site` is now a plain map ready for Jason.encode!/1
```

This is the one place the loose-key part of JSON-LD escapes the type system; the
rest of your document stays fully typed.

## Embed it in a page

```elixir
SchemaOrg.to_script_tag(blog)   # HTML-safe <script type="application/ld+json"> string
```

In a Phoenix HEEx template (needs `:phoenix_live_view`):

```heex
<SchemaOrg.HTML.json_ld data={@blog} />
```
