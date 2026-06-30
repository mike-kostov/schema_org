defmodule SchemaOrg.PronounceableText do
  @moduledoc "Data type: PronounceableText."

  defstruct [:in_language, :phonetic_text, :speech_to_text_markup, :text_value]

  @json_keys %{
    in_language: "inLanguage",
    phonetic_text: "phoneticText",
    speech_to_text_markup: "speechToTextMarkup",
    text_value: "textValue"
  }

  @doc false
  def __schema_org__, do: %{type: "PronounceableText", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.PronounceableText` struct."
  def new, do: %__MODULE__{}
end
