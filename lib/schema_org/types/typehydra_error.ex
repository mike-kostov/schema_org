defmodule SchemaOrg.TypehydraError do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "hydra:Error", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypehydraError` struct."
  def new, do: %__MODULE__{}
end
