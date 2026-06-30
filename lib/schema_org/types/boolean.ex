defmodule SchemaOrg.Boolean do
  @moduledoc "Boolean: True or False."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Boolean", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Boolean` struct."
  def new, do: %__MODULE__{}
end
