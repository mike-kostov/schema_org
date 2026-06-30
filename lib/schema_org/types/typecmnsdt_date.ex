defmodule SchemaOrg.TypecmnsdtDate do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "cmns-dt:Date", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypecmnsdtDate` struct."
  def new, do: %__MODULE__{}
end
