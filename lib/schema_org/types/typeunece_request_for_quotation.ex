defmodule SchemaOrg.TypeuneceRequestForQuotation do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:RequestForQuotation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceRequestForQuotation` struct."
  def new, do: %__MODULE__{}
end
