defmodule SchemaOrg.Intangible do
  @moduledoc "A utility class that serves as the umbrella for a number of 'intangible' things such as quantities, structured values, etc."

  defstruct [
    :additional_type,
    :alternate_name,
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
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
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
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Intangible", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Intangible` struct."
  def new, do: %__MODULE__{}
end
