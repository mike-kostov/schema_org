defmodule SchemaOrg.HTMLTest do
  use ExUnit.Case, async: true

  # The component is compiled only when the optional :phoenix_live_view dep is
  # present (it is in this project's dev/test env). Guard the tests the same way
  # so the suite stays green for anyone running without the optional dep.
  if Code.ensure_loaded?(Phoenix.Component) do
    import Phoenix.LiveViewTest

    test "json_ld/1 renders an HTML-safe script tag for a single struct" do
      html = render_component(&SchemaOrg.HTML.json_ld/1, data: %SchemaOrg.Product{name: "Chair"})

      assert html =~ ~s(<script type="application/ld+json">)
      assert html =~ ~s("@type":"Product")
      assert html =~ ~s("name":"Chair")
    end

    test "json_ld/1 renders a @graph for a list of structs" do
      html =
        render_component(&SchemaOrg.HTML.json_ld/1,
          data: [%SchemaOrg.Organization{name: "Acme"}, %SchemaOrg.WebSite{name: "Acme"}]
        )

      assert html =~ ~s("@graph")
      assert html =~ ~s("@type":"Organization")
      assert html =~ ~s("@type":"WebSite")
    end
  end
end
