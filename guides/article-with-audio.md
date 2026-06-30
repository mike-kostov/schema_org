# Article with an audio clip

For a podcast episode or narrated article, embed an `AudioObject` in the
article's `audio` property.

```elixir
article = %SchemaOrg.Article{
  headline: "Listen: the schema_org story",
  author: %SchemaOrg.Person{name: "Mike Kostov"},
  audio: %SchemaOrg.AudioObject{
    name: "The schema_org story",
    content_url: "https://example.com/audio.mp3",
    encoding_format: "audio/mpeg",
    duration: "PT22M"
  }
}

SchemaOrg.to_json_ld(article)
```

produces:

```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Listen: the schema_org story",
  "author": { "@type": "Person", "name": "Mike Kostov" },
  "audio": {
    "@type": "AudioObject",
    "name": "The schema_org story",
    "contentUrl": "https://example.com/audio.mp3",
    "encodingFormat": "audio/mpeg",
    "duration": "PT22M"
  }
}
```

`encoding_format` is the MIME type of the file. For full podcast feeds, see
Schema.org's [`PodcastEpisode`](https://schema.org/PodcastEpisode) and
[`PodcastSeries`](https://schema.org/PodcastSeries) — both are generated types.

## Embed it in a page

```elixir
SchemaOrg.to_script_tag(article)   # HTML-safe <script type="application/ld+json"> string
```

In a Phoenix HEEx template (needs `:phoenix_live_view`):

```heex
<SchemaOrg.HTML.json_ld data={@article} />
```
