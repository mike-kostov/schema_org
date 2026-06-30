defmodule SchemaOrg.Float do
  @moduledoc "Data type: Floating number."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Float", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Float` struct."
  def new, do: %__MODULE__{}
end
