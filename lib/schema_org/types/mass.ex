defmodule SchemaOrg.Mass do
  @moduledoc "Properties that take Mass as values are of the form '&lt;Number&gt; &lt;Mass unit of measure&gt;'. E.g., '7 kg'."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Mass", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Mass` struct."
  def new, do: %__MODULE__{}
end
