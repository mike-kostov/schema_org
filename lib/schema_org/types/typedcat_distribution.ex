defmodule SchemaOrg.TypedcatDistribution do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "dcat:Distribution", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypedcatDistribution` struct."
  def new, do: %__MODULE__{}
end
