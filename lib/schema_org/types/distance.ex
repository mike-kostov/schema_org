defmodule SchemaOrg.Distance do
  @moduledoc "Properties that take Distances as values are of the form '&lt;Number&gt; &lt;Length unit of measure&gt;'. E.g., '7 ft'."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Distance", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Distance` struct."
  def new, do: %__MODULE__{}
end
