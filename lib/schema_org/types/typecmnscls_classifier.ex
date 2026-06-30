defmodule SchemaOrg.TypecmnsclsClassifier do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "cmns-cls:Classifier", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypecmnsclsClassifier` struct."
  def new, do: %__MODULE__{}
end
