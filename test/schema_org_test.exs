defmodule SchemaOrgTest do
  use ExUnit.Case, async: true

  alias SchemaOrg.{Brand, Offer, Product}

  # These tests run against the real generated type modules in
  # lib/schema_org/types/, produced by `mix schema_org.build_types`.
  # Building is via struct literals (ADR-002), not pipe setters.

  test "schema_struct?/1 recognises generated modules" do
    assert SchemaOrg.schema_struct?(Product)
    assert SchemaOrg.schema_struct?(Offer)
    refute SchemaOrg.schema_struct?(String)
  end

  test "the canonical struct-literal example builds a nested struct graph" do
    product = %Product{
      name: "MacBook Pro",
      offers: %Offer{price: 1999.0, price_currency: "USD"}
    }

    assert product.name == "MacBook Pro"
    assert product.offers.price == 1999.0
    assert product.offers.price_currency == "USD"
  end

  test "to_map/1 drops nils, re-keys to camelCase, and recurses into nested structs" do
    map =
      %Product{
        name: "MacBook Pro",
        offers: %Offer{price: 1999.0, price_currency: "USD"}
      }
      |> SchemaOrg.to_map()

    assert map == %{
             "@type" => "Product",
             "name" => "MacBook Pro",
             "offers" => %{"@type" => "Offer", "price" => 1999.0, "priceCurrency" => "USD"}
           }
  end

  test "to_json_ld/1 adds @context and produces decodable JSON" do
    json = SchemaOrg.to_json_ld(%Product{name: "MacBook Pro"})

    assert Jason.decode!(json) == %{
             "@context" => "https://schema.org",
             "@type" => "Product",
             "name" => "MacBook Pro"
           }
  end

  test "a list of nested structs is serialised element-wise" do
    map =
      %Product{offers: [%Offer{price: 10.0}, %Offer{price: 20.0}]}
      |> SchemaOrg.to_map()

    assert map["offers"] == [
             %{"@type" => "Offer", "price" => 10.0},
             %{"@type" => "Offer", "price" => 20.0}
           ]
  end

  test "a property accepts either a scalar or a nested struct on the same field" do
    # Schema.org's loose value model: brand can be plain text or a Brand node.
    assert SchemaOrg.to_map(%Product{brand: "Apple"})["brand"] == "Apple"

    assert SchemaOrg.to_map(%Product{brand: %Brand{name: "Apple"}})["brand"] ==
             %{"@type" => "Brand", "name" => "Apple"}
  end

  test "inherited properties (from Thing via subClassOf) are present on Product" do
    # `name`, `description`, `url` are Thing properties inherited by every type;
    # flattening means they are real struct fields on Product.
    product = %Product{name: "X", description: "A thing", url: "https://example.com"}

    assert product.description == "A thing"
    assert product.url == "https://example.com"
  end

  test "to_script_tag/1 wraps html-safe JSON-LD that decodes back correctly" do
    tag = SchemaOrg.to_script_tag(%Product{name: "X"})

    assert String.starts_with?(tag, ~s(<script type="application/ld+json">))
    assert String.ends_with?(tag, "</script>")

    json =
      tag
      |> String.replace_prefix(~s(<script type="application/ld+json">), "")
      |> String.replace_suffix("</script>", "")

    assert Jason.decode!(json) == %{
             "@context" => "https://schema.org",
             "@type" => "Product",
             "name" => "X"
           }
  end

  test "to_script_tag/1 escapes </script> so a value cannot break out of the tag" do
    tag = SchemaOrg.to_script_tag(%Product{name: "</script><script>alert(1)</script>"})

    inner =
      tag
      |> String.replace_prefix(~s(<script type="application/ld+json">), "")
      |> String.replace_suffix("</script>", "")

    # no injected tags survive in the rendered markup ...
    refute inner =~ "</script>"
    refute inner =~ "<script>"
    # ... yet the value still round-trips when parsed as JSON
    assert Jason.decode!(inner)["name"] == "</script><script>alert(1)</script>"
  end
end
