defmodule SchemaOrg.QuantitativeValue do
  @moduledoc " A point value or interval for product characteristics and other purposes."

  defstruct [
    :additional_property,
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :max_value,
    :min_value,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :unit_code,
    :unit_text,
    :url,
    :value,
    :value_reference
  ]

  @json_keys %{
    additional_property: "additionalProperty",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    max_value: "maxValue",
    min_value: "minValue",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    unit_code: "unitCode",
    unit_text: "unitText",
    url: "url",
    value: "value",
    value_reference: "valueReference"
  }

  @doc false
  def __schema_org__, do: %{type: "QuantitativeValue", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.QuantitativeValue` struct."
  def new, do: %__MODULE__{}
end
