defmodule SchemaOrg.TypefibofndarrdocDocument do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "fibo-fnd-arr-doc:Document", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypefibofndarrdocDocument` struct."
  def new, do: %__MODULE__{}
end
