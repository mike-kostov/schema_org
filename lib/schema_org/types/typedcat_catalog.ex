defmodule SchemaOrg.TypedcatCatalog do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "dcat:Catalog", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypedcatCatalog` struct."
  def new, do: %__MODULE__{}
end
