defmodule SchemaOrg.Time do
  @moduledoc "A point in time recurring on multiple days in the form hh:mm:ss[Z|(+|-)hh:mm] (see [XML schema for details](http://www.w3.org/TR/xmlschema-2/#time))."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Time", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Time` struct."
  def new, do: %__MODULE__{}
end
