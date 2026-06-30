defmodule SchemaOrg.Energy do
  @moduledoc "Properties that take Energy as values are of the form '&lt;Number&gt; &lt;Energy unit of measure&gt;'."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Energy", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Energy` struct."
  def new, do: %__MODULE__{}
end
