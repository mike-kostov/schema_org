defmodule SchemaOrg.TypecmnslocAddress do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "cmns-loc:Address", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypecmnslocAddress` struct."
  def new, do: %__MODULE__{}
end
