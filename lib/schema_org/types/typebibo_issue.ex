defmodule SchemaOrg.TypebiboIssue do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "bibo:Issue", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypebiboIssue` struct."
  def new, do: %__MODULE__{}
end
