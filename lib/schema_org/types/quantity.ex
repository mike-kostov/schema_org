defmodule SchemaOrg.Quantity do
  @moduledoc "Quantities such as distance, time, mass, weight, etc. Particular instances of say Mass are strings like '3 kg' or '4 milligrams'."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Quantity", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Quantity` struct."
  def new, do: %__MODULE__{}
end
