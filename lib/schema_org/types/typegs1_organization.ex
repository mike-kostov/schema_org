defmodule SchemaOrg.Typegs1Organization do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "gs1:Organization", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Typegs1Organization` struct."
  def new, do: %__MODULE__{}
end
