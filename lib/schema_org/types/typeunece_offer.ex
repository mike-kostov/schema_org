defmodule SchemaOrg.TypeuneceOffer do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:Offer", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceOffer` struct."
  def new, do: %__MODULE__{}
end
