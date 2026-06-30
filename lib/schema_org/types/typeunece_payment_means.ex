defmodule SchemaOrg.TypeunecePaymentMeans do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:PaymentMeans", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeunecePaymentMeans` struct."
  def new, do: %__MODULE__{}
end
