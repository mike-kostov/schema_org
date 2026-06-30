defmodule SchemaOrg.TypeuneceLineTradeAgreement do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:LineTradeAgreement", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceLineTradeAgreement` struct."
  def new, do: %__MODULE__{}
end
