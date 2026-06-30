defmodule SchemaOrg.TypeuneceGeographicalCoordinate do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:GeographicalCoordinate", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceGeographicalCoordinate` struct."
  def new, do: %__MODULE__{}
end
