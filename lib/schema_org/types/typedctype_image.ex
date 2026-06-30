defmodule SchemaOrg.TypedctypeImage do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "dctype:Image", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypedctypeImage` struct."
  def new, do: %__MODULE__{}
end
