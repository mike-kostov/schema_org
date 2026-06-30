defmodule SchemaOrg.TypecmnsgeGeopoliticalEntity do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "cmns-ge:GeopoliticalEntity", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypecmnsgeGeopoliticalEntity` struct."
  def new, do: %__MODULE__{}
end
