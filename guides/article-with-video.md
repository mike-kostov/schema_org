# Article with a video clip

To make an article eligible for **video rich results**, embed a `VideoObject`
in the article's `video` property. Google requires `name`, `description`,
`thumbnailUrl`, and `uploadDate`; `contentUrl` and/or `embedUrl` are strongly
recommended.

```elixir
article = %SchemaOrg.Article{
  headline: "Watch: building schema_org",
  author: %SchemaOrg.Person{name: "Mike Kostov"},
  video: %SchemaOrg.VideoObject{
    name: "Building schema_org",
    description: "A walkthrough.",
    thumbnail_url: "https://example.com/thumb.jpg",
    upload_date: "2026-06-30",
    content_url: "https://example.com/video.mp4",
    embed_url: "https://example.com/embed/abc",
    duration: "PT8M30S"
  }
}

SchemaOrg.to_json_ld(article)
```

produces:

```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Watch: building schema_org",
  "author": { "@type": "Person", "name": "Mike Kostov" },
  "video": {
    "@type": "VideoObject",
    "name": "Building schema_org",
    "description": "A walkthrough.",
    "thumbnailUrl": "https://example.com/thumb.jpg",
    "uploadDate": "2026-06-30",
    "contentUrl": "https://example.com/video.mp4",
    "embedUrl": "https://example.com/embed/abc",
    "duration": "PT8M30S"
  }
}
```

`duration` uses [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations)
format (`PT8M30S` = 8 min 30 s). To attach several clips, pass a list to
`video:`.

## Embed it in a page

```elixir
SchemaOrg.to_script_tag(article)   # HTML-safe <script type="application/ld+json"> string
```

In a Phoenix HEEx template (needs `:phoenix_live_view`):

```heex
<SchemaOrg.HTML.json_ld data={@article} />
```
