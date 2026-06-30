defmodule SchemaOrg.ExamplesTest do
  use ExUnit.Case, async: true

  # Verifies the exact JSON-LD shown in the guides under `guides/`. If a guide's
  # code or expected output changes, update it here too — these assertions are
  # the contract that keeps the guides from rotting. The struct-building code in
  # each test is copied verbatim into the matching guide.

  test "guides/ecommerce-product.md — Product with offer, rating, review" do
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

    assert SchemaOrg.to_map(product) == %{
             "@type" => "Product",
             "name" => "Aeron Chair",
             "description" => "Ergonomic office chair.",
             "image" => "https://example.com/aeron.jpg",
             "sku" => "AER-001",
             "brand" => %{"@type" => "Brand", "name" => "Herman Miller"},
             "offers" => %{
               "@type" => "Offer",
               "price" => 1395.0,
               "priceCurrency" => "USD",
               "availability" => "https://schema.org/InStock",
               "url" => "https://example.com/aeron"
             },
             "aggregateRating" => %{
               "@type" => "AggregateRating",
               "ratingValue" => 4.6,
               "reviewCount" => 89
             },
             "review" => %{
               "@type" => "Review",
               "author" => %{"@type" => "Person", "name" => "Jane D."},
               "reviewRating" => %{"@type" => "Rating", "ratingValue" => 5, "bestRating" => 5},
               "reviewBody" => "Best chair I've owned."
             }
           }
  end

  test "guides/blog-home.md — Blog with publisher Organization" do
    blog = %SchemaOrg.Blog{
      name: "The Acme Blog",
      url: "https://example.com/blog",
      description: "Engineering notes from the Acme team.",
      publisher: %SchemaOrg.Organization{
        name: "Acme Inc.",
        logo: %SchemaOrg.ImageObject{url: "https://example.com/logo.png"}
      }
    }

    assert SchemaOrg.to_map(blog) == %{
             "@type" => "Blog",
             "name" => "The Acme Blog",
             "url" => "https://example.com/blog",
             "description" => "Engineering notes from the Acme team.",
             "publisher" => %{
               "@type" => "Organization",
               "name" => "Acme Inc.",
               "logo" => %{"@type" => "ImageObject", "url" => "https://example.com/logo.png"}
             }
           }
  end

  test "guides/blog-article.md — BlogPosting with author and publisher" do
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

    assert SchemaOrg.to_map(article) == %{
             "@type" => "BlogPosting",
             "headline" => "Shipping schema_org",
             "description" => "How we built a typed Schema.org library.",
             "image" => "https://example.com/cover.jpg",
             "datePublished" => "2026-06-30",
             "dateModified" => "2026-06-30",
             "author" => %{
               "@type" => "Person",
               "name" => "Mike Kostov",
               "url" => "https://example.com/mike"
             },
             "publisher" => %{
               "@type" => "Organization",
               "name" => "Acme Inc.",
               "logo" => %{"@type" => "ImageObject", "url" => "https://example.com/logo.png"}
             }
           }
  end

  test "guides/article-with-video.md — Article embedding a VideoObject" do
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

    assert SchemaOrg.to_map(article) == %{
             "@type" => "Article",
             "headline" => "Watch: building schema_org",
             "author" => %{"@type" => "Person", "name" => "Mike Kostov"},
             "video" => %{
               "@type" => "VideoObject",
               "name" => "Building schema_org",
               "description" => "A walkthrough.",
               "thumbnailUrl" => "https://example.com/thumb.jpg",
               "uploadDate" => "2026-06-30",
               "contentUrl" => "https://example.com/video.mp4",
               "embedUrl" => "https://example.com/embed/abc",
               "duration" => "PT8M30S"
             }
           }
  end

  test "guides/article-with-audio.md — Article embedding an AudioObject" do
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

    assert SchemaOrg.to_map(article) == %{
             "@type" => "Article",
             "headline" => "Listen: the schema_org story",
             "author" => %{"@type" => "Person", "name" => "Mike Kostov"},
             "audio" => %{
               "@type" => "AudioObject",
               "name" => "The schema_org story",
               "contentUrl" => "https://example.com/audio.mp3",
               "encodingFormat" => "audio/mpeg",
               "duration" => "PT22M"
             }
           }
  end

  test "guides/landing-page.md — multiple nodes under a single @graph" do
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

    assert SchemaOrg.to_map(nodes) == %{
             "@graph" => [
               %{
                 "@type" => "Organization",
                 "name" => "Acme Inc.",
                 "url" => "https://example.com",
                 "logo" => %{"@type" => "ImageObject", "url" => "https://example.com/logo.png"},
                 "sameAs" => ["https://twitter.com/acme", "https://linkedin.com/company/acme"],
                 "contactPoint" => %{
                   "@type" => "ContactPoint",
                   "telephone" => "+1-401-555-1212",
                   "contactType" => "customer service"
                 }
               },
               %{"@type" => "WebSite", "name" => "Acme", "url" => "https://example.com"},
               %{
                 "@type" => "BreadcrumbList",
                 "itemListElement" => [
                   %{
                     "@type" => "ListItem",
                     "position" => 1,
                     "name" => "Home",
                     "item" => "https://example.com"
                   },
                   %{
                     "@type" => "ListItem",
                     "position" => 2,
                     "name" => "Pricing",
                     "item" => "https://example.com/pricing"
                   }
                 ]
               },
               %{
                 "@type" => "FAQPage",
                 "mainEntity" => [
                   %{
                     "@type" => "Question",
                     "name" => "Is there a free trial?",
                     "acceptedAnswer" => %{"@type" => "Answer", "text" => "Yes, 14 days."}
                   }
                 ]
               }
             ]
           }
  end

  test "to_json_ld/1 wraps a list of nodes in @context + @graph and is decodable" do
    json =
      SchemaOrg.to_json_ld([
        %SchemaOrg.Organization{name: "Acme"},
        %SchemaOrg.WebSite{name: "Acme"}
      ])

    assert Jason.decode!(json) == %{
             "@context" => "https://schema.org",
             "@graph" => [
               %{"@type" => "Organization", "name" => "Acme"},
               %{"@type" => "WebSite", "name" => "Acme"}
             ]
           }
  end
end
