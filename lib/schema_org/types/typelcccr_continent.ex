defmodule SchemaOrg.TypelcccrContinent do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "lcc-cr:Continent", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypelcccrContinent` struct."
  def new, do: %__MODULE__{}
end
