defmodule SchemaOrg.DataType do
  @moduledoc "The basic data types such as Integers, Strings, etc."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "DataType", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DataType` struct."
  def new, do: %__MODULE__{}
end
