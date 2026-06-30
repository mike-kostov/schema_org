defmodule SchemaOrg.TypevoidDataset do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "void:Dataset", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypevoidDataset` struct."
  def new, do: %__MODULE__{}
end
