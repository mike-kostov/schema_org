defmodule SchemaOrg.DateTime do
  @moduledoc "A combination of date and time of day in the form [-]CCYY-MM-DDThh:mm:ss[Z|(+|-)hh:mm] (see Chapter 5.4 of ISO 8601)."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "DateTime", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DateTime` struct."
  def new, do: %__MODULE__{}
end
