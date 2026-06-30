defmodule SchemaOrg.TypecmnsdtDateTime do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "cmns-dt:DateTime", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypecmnsdtDateTime` struct."
  def new, do: %__MODULE__{}
end
