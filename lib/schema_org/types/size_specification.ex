defmodule SchemaOrg.SizeSpecification do
  @moduledoc "Size related properties of a product, typically a size code (`name`) and optionally a `sizeSystem`, `sizeGroup`, and product measurements (`hasMeasurement`). In addition, the intended audience can be defined through `suggestedAge`, `suggestedGender`, and suggested body measurements (`suggestedMeasurement`)."

  defstruct [
    :additional_property,
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :equal,
    :greater,
    :greater_or_equal,
    :has_measurement,
    :identifier,
    :image,
    :lesser,
    :lesser_or_equal,
    :main_entity_of_page,
    :name,
    :non_equal,
    :owner,
    :potential_action,
    :same_as,
    :size_group,
    :size_system,
    :subject_of,
    :suggested_age,
    :suggested_gender,
    :suggested_measurement,
    :superseded_by,
    :url,
    :value_reference
  ]

  @json_keys %{
    additional_property: "additionalProperty",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    equal: "equal",
    greater: "greater",
    greater_or_equal: "greaterOrEqual",
    has_measurement: "hasMeasurement",
    identifier: "identifier",
    image: "image",
    lesser: "lesser",
    lesser_or_equal: "lesserOrEqual",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    non_equal: "nonEqual",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    size_group: "sizeGroup",
    size_system: "sizeSystem",
    subject_of: "subjectOf",
    suggested_age: "suggestedAge",
    suggested_gender: "suggestedGender",
    suggested_measurement: "suggestedMeasurement",
    superseded_by: "supersededBy",
    url: "url",
    value_reference: "valueReference"
  }

  @doc false
  def __schema_org__, do: %{type: "SizeSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.SizeSpecification` struct."
  def new, do: %__MODULE__{}
end
