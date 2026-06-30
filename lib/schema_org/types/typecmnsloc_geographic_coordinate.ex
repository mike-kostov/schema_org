defmodule SchemaOrg.TypecmnslocGeographicCoordinate do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "cmns-loc:GeographicCoordinate", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypecmnslocGeographicCoordinate` struct."
  def new, do: %__MODULE__{}
end
