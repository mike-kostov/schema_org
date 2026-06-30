defmodule SchemaOrg.Integer do
  @moduledoc "Data type: Integer."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Integer", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Integer` struct."
  def new, do: %__MODULE__{}
end
