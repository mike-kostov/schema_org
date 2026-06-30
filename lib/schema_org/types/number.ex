defmodule SchemaOrg.Number do
  @moduledoc "Data type: Number.\\n\\nUsage guidelines:\\n\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator."

  defstruct []

  @json_keys %{}

  @doc false
  def __schema_org__, do: %{type: "Number", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Number` struct."
  def new, do: %__MODULE__{}
end
