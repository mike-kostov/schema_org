defmodule SchemaOrg.TypeuneceTradeProduct do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:TradeProduct", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceTradeProduct` struct."
  def new, do: %__MODULE__{}
end
