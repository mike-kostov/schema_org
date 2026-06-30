# E-commerce Product page

Structured data for a product detail page powers Google's **product rich
results** — price, availability, and the review star rating in search. Build a
`Product` with a nested `Offer`, `Brand`, `AggregateRating`, and a `Review`:

```elixir
product = %SchemaOrg.Product{
  name: "Aeron Chair",
  description: "Ergonomic office chair.",
  image: "https://example.com/aeron.jpg",
  sku: "AER-001",
  brand: %SchemaOrg.Brand{name: "Herman Miller"},
  offers: %SchemaOrg.Offer{
    price: 1395.00,
    price_currency: "USD",
    availability: "https://schema.org/InStock",
    url: "https://example.com/aeron"
  },
  aggregate_rating: %SchemaOrg.AggregateRating{rating_value: 4.6, review_count: 89},
  review: %SchemaOrg.Review{
    author: %SchemaOrg.Person{name: "Jane D."},
    review_rating: %SchemaOrg.Rating{rating_value: 5, best_rating: 5},
    review_body: "Best chair I've owned."
  }
}

SchemaOrg.to_json_ld(product)
```

produces:

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "Aeron Chair",
  "description": "Ergonomic office chair.",
  "image": "https://example.com/aeron.jpg",
  "sku": "AER-001",
  "brand": { "@type": "Brand", "name": "Herman Miller" },
  "offers": {
    "@type": "Offer",
    "price": 1395.0,
    "priceCurrency": "USD",
    "availability": "https://schema.org/InStock",
    "url": "https://example.com/aeron"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": 4.6,
    "reviewCount": 89
  },
  "review": {
    "@type": "Review",
    "author": { "@type": "Person", "name": "Jane D." },
    "reviewRating": { "@type": "Rating", "ratingValue": 5, "bestRating": 5 },
    "reviewBody": "Best chair I've owned."
  }
}
```

`offers` accepts a single `Offer` or a list (use [`AggregateOffer`](https://schema.org/AggregateOffer)
or a list of `Offer`s for a price range). `review` likewise takes one `Review`
or a list.

## Embed it in a page

`to_script_tag/1` returns a complete, HTML-safe `<script>` tag (a value
containing `</script>` cannot break out of it):

```elixir
SchemaOrg.to_script_tag(product)
#=> ~s(<script type="application/ld+json">{…}</script>)
```

In a Phoenix HEEx template, use the component (needs `:phoenix_live_view`):

```heex
<SchemaOrg.HTML.json_ld data={@product} />
```
