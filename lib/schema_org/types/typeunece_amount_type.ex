defmodule SchemaOrg.TypeuneceAmountType do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:AmountType", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceAmountType` struct."
  def new, do: %__MODULE__{}
end
