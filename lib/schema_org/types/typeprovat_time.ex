defmodule SchemaOrg.TypeprovatTime do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "prov:atTime", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeprovatTime` struct."
  def new, do: %__MODULE__{}
end
