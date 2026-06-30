defmodule SchemaOrg.TypeuneceBrandName do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:BrandName", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceBrandName` struct."
  def new, do: %__MODULE__{}
end
