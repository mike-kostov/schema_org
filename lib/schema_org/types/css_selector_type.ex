defmodule SchemaOrg.CssSelectorType do
  @moduledoc "Text representing a CSS selector."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "CssSelectorType", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.CssSelectorType` struct."
  def new, do: %__MODULE__{}
end
