defmodule SchemaOrg.TypebiboPeriodical do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "bibo:Periodical", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypebiboPeriodical` struct."
  def new, do: %__MODULE__{}
end
