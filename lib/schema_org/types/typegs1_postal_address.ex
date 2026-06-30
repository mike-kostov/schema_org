defmodule SchemaOrg.Typegs1PostalAddress do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "gs1:PostalAddress", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Typegs1PostalAddress` struct."
  def new, do: %__MODULE__{}
end
