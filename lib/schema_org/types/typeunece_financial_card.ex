defmodule SchemaOrg.TypeuneceFinancialCard do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:FinancialCard", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceFinancialCard` struct."
  def new, do: %__MODULE__{}
end
