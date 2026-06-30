defmodule SchemaOrg.Duration do
  @moduledoc "Quantity: Duration (use [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601))."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Duration", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Duration` struct."
  def new, do: %__MODULE__{}
end
