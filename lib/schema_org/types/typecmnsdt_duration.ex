defmodule SchemaOrg.TypecmnsdtDuration do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "cmns-dt:Duration", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypecmnsdtDuration` struct."
  def new, do: %__MODULE__{}
end
