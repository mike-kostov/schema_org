defmodule SchemaOrg.TypeuneceSpecifiedCertificate do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "unece:SpecifiedCertificate", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeuneceSpecifiedCertificate` struct."
  def new, do: %__MODULE__{}
end
