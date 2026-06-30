defmodule SchemaOrg.TypeuneceInvoice do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:Invoice", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceInvoice` struct."
  def new, do: %__MODULE__{}
end
