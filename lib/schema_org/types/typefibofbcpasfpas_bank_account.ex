defmodule SchemaOrg.TypefibofbcpasfpasBankAccount do
  @moduledoc ""

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "fibo-fbc-pas-fpas:BankAccount", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypefibofbcpasfpasBankAccount` struct."
  def new, do: %__MODULE__{}
end
