defmodule SchemaOrg.Typegs1CertificationDetails do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "gs1:CertificationDetails", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Typegs1CertificationDetails` struct."
  def new, do: %__MODULE__{}
end
