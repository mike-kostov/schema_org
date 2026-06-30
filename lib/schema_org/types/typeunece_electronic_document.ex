defmodule SchemaOrg.TypeuneceElectronicDocument do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:ElectronicDocument", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceElectronicDocument` struct."
  def new, do: %__MODULE__{}
end
