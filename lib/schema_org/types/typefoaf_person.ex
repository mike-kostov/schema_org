defmodule SchemaOrg.TypefoafPerson do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "foaf:Person", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypefoafPerson` struct."
  def new, do: %__MODULE__{}
end
