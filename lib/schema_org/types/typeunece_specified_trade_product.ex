defmodule SchemaOrg.TypeuneceSpecifiedTradeProduct do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:SpecifiedTradeProduct", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceSpecifiedTradeProduct` struct."
  def new, do: %__MODULE__{}
end
