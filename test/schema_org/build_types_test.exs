defmodule Mix.Tasks.SchemaOrg.BuildTypesTest do
  use ExUnit.Case, async: true

  alias Mix.Tasks.SchemaOrg.BuildTypes, as: Build

  # A minimal hand-built graph exercising every shape the parser must handle:
  # single-object domain (name on Thing), list domain (offers on Product+Service),
  # and single-class inheritance (Product subClassOf Thing).
  @graph %{
    "@graph" => [
      %{
        "@id" => "schema:Thing",
        "@type" => "rdfs:Class",
        "rdfs:comment" => "The most generic type."
      },
      %{
        "@id" => "schema:Product",
        "@type" => ["rdfs:Class"],
        "rdfs:subClassOf" => %{"@id" => "schema:Thing"},
        "rdfs:comment" => "Any offered product or service."
      },
      %{"@id" => "schema:Offer", "@type" => "rdfs:Class", "rdfs:comment" => "An offer."},
      %{
        "@id" => "schema:name",
        "@type" => "rdf:Property",
        "schema:domainIncludes" => %{"@id" => "schema:Thing"},
        "rdfs:comment" => "The name of the item."
      },
      %{
        "@id" => "schema:offers",
        "@type" => "rdf:Property",
        "schema:domainIncludes" => [%{"@id" => "schema:Product"}, %{"@id" => "schema:Service"}],
        "rdfs:comment" => "An offer to provide this item."
      },
      %{
        "@id" => "schema:price",
        "@type" => "rdf:Property",
        "schema:domainIncludes" => %{"@id" => "schema:Offer"},
        "rdfs:comment" => "The offer price."
      }
    ]
  }

  describe "normalize_list/1 — polymorphic domainIncludes/subClassOf/@type" do
    test "absent field becomes empty list" do
      assert Build.normalize_list(nil) == []
    end

    test "a bare string (e.g. an @type value) becomes a one-element list" do
      assert Build.normalize_list("rdfs:Class") == ["rdfs:Class"]
    end

    test "a single @id object becomes a one-element list" do
      assert Build.normalize_list(%{"@id" => "schema:Thing"}) == ["schema:Thing"]
    end

    test "a list of @id objects becomes a flat list of ids" do
      assert Build.normalize_list([%{"@id" => "schema:Product"}, %{"@id" => "schema:Service"}]) ==
               ["schema:Product", "schema:Service"]
    end
  end

  describe "partition_graph/1" do
    test "separates Classes from Properties" do
      {classes, properties} = Build.partition_graph(@graph)

      assert Enum.map(classes, & &1["@id"]) |> Enum.sort() ==
               ["schema:Offer", "schema:Product", "schema:Thing"]

      assert Enum.map(properties, & &1["@id"]) |> Enum.sort() ==
               ["schema:name", "schema:offers", "schema:price"]
    end
  end

  describe "property → class mapping" do
    setup do
      {classes, properties} = Build.partition_graph(@graph)
      %{direct: Build.direct_properties(properties), parents: Build.parent_map(classes)}
    end

    test "a property attaches to every class in its domainIncludes list", %{direct: direct} do
      assert direct["schema:Product"] == ["schema:offers"]
      assert direct["schema:Service"] == ["schema:offers"]
      assert direct["schema:Offer"] == ["schema:price"]
    end

    test "a class gets its direct properties plus inherited ones via subClassOf",
         %{direct: direct, parents: parents} do
      product = Build.property_ids_for_class("schema:Product", direct, parents)

      assert "schema:offers" in product, "expected the direct property"
      assert "schema:name" in product, "expected the property inherited from Thing"
    end

    test "ancestors are walked transitively and are cycle-safe", %{parents: parents} do
      assert Build.ancestors("schema:Product", parents) |> MapSet.to_list() == ["schema:Thing"]
      assert Build.ancestors("schema:Thing", parents) |> MapSet.to_list() == []
    end
  end

  describe "name sanitising" do
    test "module names: PascalCase passes through, digit-leading names are made valid" do
      assert Build.module_name("Product") == "Product"
      assert Build.module_name("Offer") == "Offer"
      assert Build.module_name("3DModel") == "Type3DModel"
    end

    test "field names: camelCase → snake_case, keywords suffixed with _" do
      assert Build.field_name("name") == :name
      assert Build.field_name("dateModified") == :date_modified
      assert Build.field_name("priceCurrency") == :price_currency
      # "end" is a reserved word and cannot be a bare function/field name
      assert Build.field_name("end") == :end_
    end

    test "the JSON-LD wire key keeps the original Schema.org camelCase" do
      descriptor = Build.descriptor(%{"@id" => "schema:dateModified", "rdfs:comment" => "x"})
      assert descriptor.field == :date_modified
      assert descriptor.func == "date_modified"
      assert descriptor.json_key == "dateModified"
    end
  end

  describe "comment_text/1 — HTML/wiki markup cleaning" do
    test "converts links, code, breaks and [[refs]] to Markdown and strips stray tags" do
      raw =
        ~s(<p>See <a href="https://x.com">the site</a> and <code>Foo</code>.</p>\n\n<p>Uses [[name]].)

      cleaned = Build.comment_text(raw)

      assert cleaned =~ "[the site](https://x.com)"
      assert cleaned =~ "`Foo`"
      assert cleaned =~ "`name`"
      # no raw HTML tags survive (the unbalanced <p> that broke ExDoc is gone)
      refute cleaned =~ ~r/<[^>]+>/
      refute cleaned =~ "[["
    end

    test "normalises through the @value and list shapes too" do
      assert Build.comment_text(%{"@value" => "<p>hi</p>"}) == "hi"
      assert Build.comment_text([%{"@value" => "<br/>x"}, "ignored"]) == "x"
      assert Build.comment_text(nil) == ""
    end
  end

  describe "render_module/2 — EEx generation" do
    setup do
      template = File.read!("priv/templates/type.ex.eex")
      specs = Build.build_modules(@graph)
      %{template: template, product: Enum.find(specs, &(&1.module_name == "Product"))}
    end

    test "emits a plain struct (no setters), constructor and the runtime metadata",
         %{template: template, product: product} do
      source = Build.render_module(template, product)

      assert source =~ "defmodule SchemaOrg.Product do"
      assert source =~ "def new, do: %__MODULE__{}"
      assert source =~ ":name"
      assert source =~ ":offers"
      assert source =~ ~s(def __schema_org__, do: %{type: "Product")
      # camelCase JSON key is preserved in the field→key map
      assert source =~ ~s(name: "name")
      # ADR-002: per-property setter functions are no longer generated
      refute source =~ "= thing, value"
    end

    test "the generated source is valid, parseable Elixir", %{
      template: template,
      product: product
    } do
      source = Build.render_module(template, product)
      assert {:ok, _ast} = Code.string_to_quoted(source)
    end
  end
end
