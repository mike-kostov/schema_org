defmodule SchemaOrg.Typegs1Country do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "gs1:Country", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Typegs1Country` struct."
  def new, do: %__MODULE__{}
end
