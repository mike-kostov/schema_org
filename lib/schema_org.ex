defmodule SchemaOrg do
  @moduledoc """
  Strictly-typed builder for Schema.org JSON-LD.

  Each Schema.org Class is a generated struct module under `SchemaOrg.*`
  (e.g. `SchemaOrg.Product`, `SchemaOrg.Offer`). Build a graph with ordinary
  struct literals — your editor auto-completes the valid fields and the compiler
  rejects the rest — then serialise it with `to_json_ld/1`.

      %SchemaOrg.Product{
        name: "MacBook Pro",
        offers: %SchemaOrg.Offer{price: 1999.0}
      }
      |> SchemaOrg.to_map()
      #=> %{
      #     "@type" => "Product",
      #     "name" => "MacBook Pro",
      #     "offers" => %{"@type" => "Offer", "price" => 1999.0}
      #   }

  A property field is untyped, so it accepts Schema.org's loose value model
  directly: a scalar or a nested struct (`brand: "Apple"` or
  `brand: %SchemaOrg.Brand{}`), and a single value or a list
  (`offers: %SchemaOrg.Offer{}` or `offers: [%SchemaOrg.Offer{}, ...]`).

  ## Multiple top-level nodes (`@graph`)

  Pass a **list** of structs to describe several independent nodes in one
  document (e.g. a landing page's `Organization`, `WebSite`, and
  `BreadcrumbList`). They are emitted under a single top-level `@graph`:

      [%SchemaOrg.Organization{name: "Acme"}, %SchemaOrg.WebSite{name: "Acme"}]
      |> SchemaOrg.to_json_ld()
      #=> {"@context":"https://schema.org","@graph":[{...},{...}]}

  ## Embedding in a page

  `to_script_tag/1` returns an HTML-safe `<script type="application/ld+json">`
  tag. In Phoenix, `SchemaOrg.HTML.json_ld/1` is a function component wrapping it
  (compiled only when `:phoenix_live_view` is available).
  """

  @context "https://schema.org"

  @doc """
  Serialises a generated SchemaOrg struct (or a list of them) into a JSON-LD string.

  Adds the top-level `@context`, recurses into nested structs, drops unset
  (`nil`) properties, and re-keys each field to its Schema.org camelCase name.
  A list of structs is wrapped in a top-level `@graph` array.
  """
  @spec to_json_ld(struct() | [struct()]) :: String.t()
  def to_json_ld(thing) do
    thing |> document_map() |> Jason.encode!()
  end

  @doc ~S'''
  Renders a struct (or list of structs) as a complete, HTML-safe
  `<script type="application/ld+json">` tag, ready to drop into a page `<head>`.

  The JSON is encoded with `escape: :html_safe`, so a value containing
  `</script>` (or `<!--`) cannot break out of the tag — the `<` is emitted as a
  `<` escape, which a JSON-LD parser reads back as `<`.

  Returns a plain string. In a Phoenix/HEEx template wrap it with
  `Phoenix.HTML.raw/1`, or use the `SchemaOrg.HTML.json_ld/1` component:

      <%= Phoenix.HTML.raw(SchemaOrg.to_script_tag(@product)) %>
  '''
  @spec to_script_tag(struct() | [struct()]) :: String.t()
  def to_script_tag(thing) do
    json = thing |> document_map() |> Jason.encode!(escape: :html_safe)
    ~s(<script type="application/ld+json">) <> json <> ~s(</script>)
  end

  # The full JSON-LD document map: the node(s) plus the top-level @context.
  defp document_map(thing) do
    thing
    |> to_map()
    |> Map.put("@context", @context)
  end

  @doc """
  Like `to_json_ld/1` but returns the bare JSON-LD map (no `@context`, not encoded).

  Useful for embedding inside a larger document or for assertions in tests. A
  list of structs returns `%{"@graph" => [...]}`.
  """
  @spec to_map(struct() | [struct()]) :: map()
  def to_map(nodes) when is_list(nodes) do
    %{"@graph" => Enum.map(nodes, &to_map/1)}
  end

  def to_map(%mod{} = thing) do
    meta = mod.__schema_org__()

    thing
    |> Map.from_struct()
    |> Enum.reduce(%{"@type" => meta.type}, fn
      {_field, nil}, acc ->
        acc

      {field, value}, acc ->
        Map.put(acc, Map.fetch!(meta.json_keys, field), encode_value(value))
    end)
  end

  # Recurse into nested SchemaOrg structs and lists; pass scalars through.
  defp encode_value(list) when is_list(list), do: Enum.map(list, &encode_value/1)

  defp encode_value(%mod{} = value) do
    if schema_struct?(mod), do: to_map(value), else: value
  end

  defp encode_value(value), do: value

  @doc """
  Returns `true` if `module` is a generated SchemaOrg type module.
  """
  @spec schema_struct?(module()) :: boolean()
  def schema_struct?(module) do
    Code.ensure_loaded?(module) and function_exported?(module, :__schema_org__, 0)
  end
end
