defmodule SchemaOrg.TypeuneceCountry do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:Country", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceCountry` struct."
  def new, do: %__MODULE__{}
end
