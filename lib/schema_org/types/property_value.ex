defmodule SchemaOrg.PropertyValue do
  @moduledoc "A property-value pair, e.g. representing a feature of a product or place. Use the 'name' property for the name of the property. If there is an additional human-readable version of the value, put that into the 'description' property.\\n\\n Always use specific schema.org properties when a) they exist and b) you can populate them. Using PropertyValue as a substitute will typically not trigger the same effect as using the original, specific property."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
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
    :value,
    :value_reference
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
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
    value: "value",
    value_reference: "valueReference"
  }

  @doc false
  def __schema_org__, do: %{type: "PropertyValue", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.PropertyValue` struct."
  def new, do: %__MODULE__{}
end
