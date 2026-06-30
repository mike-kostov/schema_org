defmodule SchemaOrg.XPathType do
  @moduledoc "Text representing an XPath (typically but not necessarily version 1.0)."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "XPathType", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.XPathType` struct."
  def new, do: %__MODULE__{}
end
