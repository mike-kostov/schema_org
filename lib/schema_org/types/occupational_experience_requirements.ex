defmodule SchemaOrg.OccupationalExperienceRequirements do
  @moduledoc "Indicates employment-related experience requirements, e.g. `monthsOfExperience`."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :months_of_experience,
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
    months_of_experience: "monthsOfExperience",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "OccupationalExperienceRequirements", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.OccupationalExperienceRequirements` struct."
  def new, do: %__MODULE__{}
end
