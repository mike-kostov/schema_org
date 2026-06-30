defmodule SchemaOrg.SpeakableSpecification do
  @moduledoc "A SpeakableSpecification indicates (typically via `xpath` or `cssSelector`) sections of a document that are highlighted as particularly `speakable`. Instances of this type are expected to be used primarily as values of the `speakable` property."

  defstruct [
    :additional_type,
    :alternate_name,
    :css_selector,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :xpath
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    css_selector: "cssSelector",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    xpath: "xpath"
  }

  @doc false
  def __schema_org__, do: %{type: "SpeakableSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.SpeakableSpecification` struct."
  def new, do: %__MODULE__{}
end
