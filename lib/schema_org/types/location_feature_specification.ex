defmodule SchemaOrg.LocationFeatureSpecification do
  @moduledoc "Specifies a location feature by providing a structured value representing a feature of an accommodation as a property-value pair of varying degrees of formality."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :hours_available,
    :identifier,
    :image,
    :main_entity_of_page,
    :max_value,
    :measurement_method,
    :measurement_technique,
    :min_value,
    :name,
    :owner,
    :potential_action,
    :property_id,
    :same_as,
    :subject_of,
    :unit_code,
    :unit_text,
    :url,
    :valid_from,
    :valid_through,
    :value,
    :value_reference
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    hours_available: "hoursAvailable",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    max_value: "maxValue",
    measurement_method: "measurementMethod",
    measurement_technique: "measurementTechnique",
    min_value: "minValue",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    property_id: "propertyID",
    same_as: "sameAs",
    subject_of: "subjectOf",
    unit_code: "unitCode",
    unit_text: "unitText",
    url: "url",
    valid_from: "validFrom",
    valid_through: "validThrough",
    value: "value",
    value_reference: "valueReference"
  }

  @doc false
  def __schema_org__, do: %{type: "LocationFeatureSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.LocationFeatureSpecification` struct."
  def new, do: %__MODULE__{}
end
