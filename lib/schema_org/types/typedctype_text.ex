defmodule SchemaOrg.TypedctypeText do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "dctype:Text", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypedctypeText` struct."
  def new, do: %__MODULE__{}
end
