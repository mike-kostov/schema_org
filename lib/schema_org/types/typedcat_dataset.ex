defmodule SchemaOrg.TypedcatDataset do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "dcat:Dataset", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypedcatDataset` struct."
  def new, do: %__MODULE__{}
end
