defmodule SchemaOrgTest do
  use ExUnit.Case, async: true

  alias SchemaOrg.{Offer, Product}

  # These tests run against the real generated type modules in
  # lib/schema_org/types/, produced by `mix schema_org.build_types`.

  test "schema_struct?/1 recognises generated modules" do
    assert SchemaOrg.schema_struct?(Product)
    assert SchemaOrg.schema_struct?(Offer)
    refute SchemaOrg.schema_struct?(String)
  end

  test "the canonical pipe example builds an immutable struct graph" do
    offer = Offer.new() |> Offer.price(1999.0) |> Offer.price_currency("USD")
    product = Product.new() |> Product.name("MacBook Pro") |> Product.offers(offer)

    assert product.name == "MacBook Pro"
    assert product.offers.price == 1999.0
    assert product.offers.price_currency == "USD"
    # setters are immutable: the original offer is untouched
    assert Offer.new() |> Offer.price(1.0) |> Map.get(:price_currency) == nil
  end

  test "to_map/1 drops nils, re-keys to camelCase, and recurses into nested structs" do
    map =
      Product.new()
      |> Product.name("MacBook Pro")
      |> Product.offers(Offer.new() |> Offer.price(1999.0) |> Offer.price_currency("USD"))
      |> SchemaOrg.to_map()

    assert map == %{
             "@type" => "Product",
             "name" => "MacBook Pro",
             "offers" => %{"@type" => "Offer", "price" => 1999.0, "priceCurrency" => "USD"}
           }
  end

  test "to_json_ld/1 adds @context and produces decodable JSON" do
    json =
      Product.new()
      |> Product.name("MacBook Pro")
      |> SchemaOrg.to_json_ld()

    assert Jason.decode!(json) == %{
             "@context" => "https://schema.org",
             "@type" => "Product",
             "name" => "MacBook Pro"
           }
  end

  test "a list of nested structs is serialised element-wise" do
    map =
      Product.new()
      |> Product.offers([
        Offer.new() |> Offer.price(10.0),
        Offer.new() |> Offer.price(20.0)
      ])
      |> SchemaOrg.to_map()

    assert map["offers"] == [
             %{"@type" => "Offer", "price" => 10.0},
             %{"@type" => "Offer", "price" => 20.0}
           ]
  end

  test "inherited properties (from Thing via subClassOf) are present on Product" do
    # `name`, `description`, `url` are Thing properties inherited by every type
    product =
      Product.new()
      |> Product.name("X")
      |> Product.description("A thing")
      |> Product.url("https://example.com")

    assert product.description == "A thing"
    assert product.url == "https://example.com"
  end
end
