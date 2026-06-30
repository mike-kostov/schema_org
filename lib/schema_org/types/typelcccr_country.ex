defmodule SchemaOrg.TypelcccrCountry do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "lcc-cr:Country", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypelcccrCountry` struct."
  def new, do: %__MODULE__{}
end
