defmodule SchemaOrg.Date do
  @moduledoc "A date value in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Date", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Date` struct."
  def new, do: %__MODULE__{}
end
