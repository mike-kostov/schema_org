defmodule SchemaOrg.TypevcardVCard do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "vcard:VCard", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypevcardVCard` struct."
  def new, do: %__MODULE__{}
end
