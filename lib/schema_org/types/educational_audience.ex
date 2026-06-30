defmodule SchemaOrg.EducationalAudience do
  @moduledoc "An EducationalAudience."

  defstruct [
    :additional_type,
    :alternate_name,
    :audience_type,
    :description,
    :disambiguating_description,
    :educational_role,
    :geographic_area,
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
    audience_type: "audienceType",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    educational_role: "educationalRole",
    geographic_area: "geographicArea",
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
  def __schema_org__, do: %{type: "EducationalAudience", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.EducationalAudience` struct."
  def new, do: %__MODULE__{}
end
