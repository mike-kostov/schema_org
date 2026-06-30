defmodule SchemaOrg.TypecmnscolCollection do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "cmns-col:Collection", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypecmnscolCollection` struct."
  def new, do: %__MODULE__{}
end
