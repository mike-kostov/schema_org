defmodule SchemaOrg.MedicalAudience do
  @moduledoc "Target audiences for medical web pages."

  defstruct [
    :additional_type,
    :alternate_name,
    :audience_type,
    :description,
    :disambiguating_description,
    :geographic_area,
    :health_condition,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :required_gender,
    :required_max_age,
    :required_min_age,
    :same_as,
    :subject_of,
    :suggested_age,
    :suggested_gender,
    :suggested_max_age,
    :suggested_measurement,
    :suggested_min_age,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    audience_type: "audienceType",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    geographic_area: "geographicArea",
    health_condition: "healthCondition",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    required_gender: "requiredGender",
    required_max_age: "requiredMaxAge",
    required_min_age: "requiredMinAge",
    same_as: "sameAs",
    subject_of: "subjectOf",
    suggested_age: "suggestedAge",
    suggested_gender: "suggestedGender",
    suggested_max_age: "suggestedMaxAge",
    suggested_measurement: "suggestedMeasurement",
    suggested_min_age: "suggestedMinAge",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MedicalAudience", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalAudience` struct."
  def new, do: %__MODULE__{}
end
