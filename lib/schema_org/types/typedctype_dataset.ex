defmodule SchemaOrg.TypedctypeDataset do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "dctype:Dataset", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypedctypeDataset` struct."
  def new, do: %__MODULE__{}
end
