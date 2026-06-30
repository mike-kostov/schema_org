defmodule SchemaOrg do
  @moduledoc """
  Strictly-typed, pipe-friendly builder for Schema.org JSON-LD.

  Each Schema.org Class is a generated struct module under `SchemaOrg.*`
  (e.g. `SchemaOrg.Product`, `SchemaOrg.Offer`) with a `new/0` constructor and
  one immutable setter per valid property. Build a graph with the pipe operator,
  then serialise it with `to_json_ld/1`.

      iex> import SchemaOrg
      iex> Product.new()
      ...> |> Product.name("MacBook Pro")
      ...> |> Product.offers(Offer.new() |> Offer.price(1999.0))
      ...> |> to_map()
      %{
        "@type" => "Product",
        "name" => "MacBook Pro",
        "offers" => %{"@type" => "Offer", "price" => 1999.0}
      }
  """

  @context "https://schema.org"

  @doc """
  Serialises a generated SchemaOrg struct into a JSON-LD string.

  Adds the top-level `@context`, recurses into nested structs, drops unset
  (`nil`) properties, and re-keys each field to its Schema.org camelCase name.
  """
  @spec to_json_ld(struct()) :: String.t()
  def to_json_ld(%_{} = thing) do
    thing
    |> to_map()
    |> Map.put("@context", @context)
    |> Jason.encode!()
  end

  @doc """
  Like `to_json_ld/1` but returns the bare JSON-LD map (no `@context`, not encoded).

  Useful for embedding inside a larger document or for assertions in tests.
  """
  @spec to_map(struct()) :: map()
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
