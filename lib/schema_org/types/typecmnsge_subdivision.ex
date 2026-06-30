defmodule SchemaOrg.TypecmnsgeSubdivision do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "cmns-ge:Subdivision", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypecmnsgeSubdivision` struct."
  def new, do: %__MODULE__{}
end
