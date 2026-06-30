defmodule SchemaOrg.TypefibofndplcadrPostalAddress do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "fibo-fnd-plc-adr:PostalAddress", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypefibofndplcadrPostalAddress` struct."
  def new, do: %__MODULE__{}
end
