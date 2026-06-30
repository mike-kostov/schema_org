defmodule SchemaOrg.QualitativeValue do
  @moduledoc "A predefined value for a product characteristic, e.g. the power cord plug type 'US' or the garment sizes 'S', 'M', 'L', and 'XL'."

  defstruct [
    :additional_property,
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :equal,
    :greater,
    :greater_or_equal,
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
    :subject_of,
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
    subject_of: "subjectOf",
    superseded_by: "supersededBy",
    url: "url",
    value_reference: "valueReference"
  }

  @doc false
  def __schema_org__, do: %{type: "QualitativeValue", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.QualitativeValue` struct."
  def new, do: %__MODULE__{}
end
