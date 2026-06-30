defmodule SchemaOrg.PropertyValueSpecification do
  @moduledoc "A Property value specification."

  defstruct [
    :additional_type,
    :alternate_name,
    :default_value,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :max_value,
    :min_value,
    :multiple_values,
    :name,
    :owner,
    :potential_action,
    :readonly_value,
    :same_as,
    :step_value,
    :subject_of,
    :url,
    :value_max_length,
    :value_min_length,
    :value_name,
    :value_pattern,
    :value_required
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    default_value: "defaultValue",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    max_value: "maxValue",
    min_value: "minValue",
    multiple_values: "multipleValues",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    readonly_value: "readonlyValue",
    same_as: "sameAs",
    step_value: "stepValue",
    subject_of: "subjectOf",
    url: "url",
    value_max_length: "valueMaxLength",
    value_min_length: "valueMinLength",
    value_name: "valueName",
    value_pattern: "valuePattern",
    value_required: "valueRequired"
  }

  @doc false
  def __schema_org__, do: %{type: "PropertyValueSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.PropertyValueSpecification` struct."
  def new, do: %__MODULE__{}
end
