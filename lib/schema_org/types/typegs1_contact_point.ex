defmodule SchemaOrg.Typegs1ContactPoint do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "gs1:ContactPoint", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Typegs1ContactPoint` struct."
  def new, do: %__MODULE__{}
end
