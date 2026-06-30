defmodule SchemaOrg.TypeuneceOrder do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:Order", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceOrder` struct."
  def new, do: %__MODULE__{}
end
