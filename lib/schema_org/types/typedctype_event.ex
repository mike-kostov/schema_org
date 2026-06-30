defmodule SchemaOrg.TypedctypeEvent do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "dctype:Event", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypedctypeEvent` struct."
  def new, do: %__MODULE__{}
end
