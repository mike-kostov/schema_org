defmodule SchemaOrg.Text do
  @moduledoc "Data type: Text."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Text", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Text` struct."
  def new, do: %__MODULE__{}
end
