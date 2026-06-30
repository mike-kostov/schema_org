defmodule SchemaOrg.TypeuneceTradeAddress do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:TradeAddress", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceTradeAddress` struct."
  def new, do: %__MODULE__{}
end
