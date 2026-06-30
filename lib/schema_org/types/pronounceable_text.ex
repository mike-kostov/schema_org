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

  @doc "Sets the Schema.org `inLanguage` property.\n\nThe language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]]."
  def in_language(%__MODULE__{} = thing, value) do
    %{thing | in_language: value}
  end

  @doc "Sets the Schema.org `phoneticText` property.\n\nRepresentation of a text [[textValue]] using the specified [[speechToTextMarkup]]. For example the city name of Houston in IPA: /ˈhjuːstən/."
  def phonetic_text(%__MODULE__{} = thing, value) do
    %{thing | phonetic_text: value}
  end

  @doc "Sets the Schema.org `speechToTextMarkup` property.\n\nForm of markup used. eg. [SSML](https://www.w3.org/TR/speech-synthesis11) or [IPA](https://www.wikidata.org/wiki/Property:P898)."
  def speech_to_text_markup(%__MODULE__{} = thing, value) do
    %{thing | speech_to_text_markup: value}
  end

  @doc "Sets the Schema.org `textValue` property.\n\nText value being annotated."
  def text_value(%__MODULE__{} = thing, value) do
    %{thing | text_value: value}
  end
end
