defmodule SchemaOrg.Occupation do
  @moduledoc "A profession, may involve prolonged training and/or a formal qualification."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :education_requirements,
    :estimated_salary,
    :experience_requirements,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :occupation_location,
    :occupational_category,
    :owner,
    :potential_action,
    :qualifications,
    :responsibilities,
    :same_as,
    :skills,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    education_requirements: "educationRequirements",
    estimated_salary: "estimatedSalary",
    experience_requirements: "experienceRequirements",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    occupation_location: "occupationLocation",
    occupational_category: "occupationalCategory",
    owner: "owner",
    potential_action: "potentialAction",
    qualifications: "qualifications",
    responsibilities: "responsibilities",
    same_as: "sameAs",
    skills: "skills",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Occupation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Occupation` struct."
  def new, do: %__MODULE__{}
end
