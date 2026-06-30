defmodule SchemaOrg.URL do
  @moduledoc "Data type: URL."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "URL", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.URL` struct."
  def new, do: %__MODULE__{}
end
