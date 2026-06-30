defmodule SchemaOrg.TypeuneceTransportMethod do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:TransportMethod", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceTransportMethod` struct."
  def new, do: %__MODULE__{}
end
