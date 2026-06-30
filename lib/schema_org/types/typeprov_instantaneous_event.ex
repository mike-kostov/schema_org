defmodule SchemaOrg.TypeprovInstantaneousEvent do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "prov:InstantaneousEvent", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeprovInstantaneousEvent` struct."
  def new, do: %__MODULE__{}
end
