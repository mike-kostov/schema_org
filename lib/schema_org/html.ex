# Compiled only when Phoenix.Component is available (i.e. the consuming app has
# :phoenix_live_view). Non-Phoenix consumers never see this module, and the
# optional dependency is never forced on them.
if Code.ensure_loaded?(Phoenix.Component) do
  defmodule SchemaOrg.HTML do
    @moduledoc """
    Phoenix function components for embedding Schema.org JSON-LD.

    This module exists only when `Phoenix.Component` is available — add
    `:phoenix_live_view` to your app's dependencies to use it. It is a thin,
    HTML-safe wrapper over `SchemaOrg.to_script_tag/1`.
    """
    use Phoenix.Component

    @doc """
    Renders a `<script type="application/ld+json">` tag for a SchemaOrg struct,
    or a list of structs (emitted as a single `@graph`).

        <SchemaOrg.HTML.json_ld data={@product} />
        <SchemaOrg.HTML.json_ld data={[@organization, @website]} />

    The output is HTML-safe: a value containing `</script>` cannot break out of
    the tag (see `SchemaOrg.to_script_tag/1`).
    """
    attr :data, :any, required: true, doc: "a SchemaOrg struct or a list of them"

    def json_ld(assigns) do
      ~H"""
      <%= Phoenix.HTML.raw(SchemaOrg.to_script_tag(@data)) %>
      """
    end
  end
end
