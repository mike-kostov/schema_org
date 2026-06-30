defmodule SchemaOrg.StatisticalVariable do
  @moduledoc "[[StatisticalVariable]] represents any type of statistical metric that can be measured at a place and time. The usage pattern for [[StatisticalVariable]] is typically expressed using [[Observation]] with an explicit [[populationType]], which is a type, typically drawn from Schema.org. Each [[StatisticalVariable]] is marked as a [[ConstraintNode]], meaning that some properties (those listed using [[constraintProperty]]) serve in this setting solely to define the statistical variable rather than literally describe a specific person, place or thing. For example, a [[StatisticalVariable]] Median_Height_Person_Female representing the median height of women, could be written as follows: the population type is [[Person]]; the measuredProperty [[height]]; the [[statType]] [[median]]; the [[gender]] [[Female]]. It is important to note that there are many kinds of scientific quantitative observation which are not fully, perfectly or unambiguously described following this pattern, or with solely Schema.org terminology. The approach taken here is designed to allow partial, incremental or minimal description of [[StatisticalVariable]]s, and the use of detailed sets of entity and property IDs from external repositories. The [[measurementMethod]], [[unitCode]] and [[unitText]] properties can also be used to clarify the specific nature and notation of an observed measurement. "

  defstruct [
    :additional_type,
    :alternate_name,
    :constraint_property,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :measured_property,
    :measurement_denominator,
    :measurement_method,
    :measurement_qualifier,
    :measurement_technique,
    :name,
    :num_constraints,
    :owner,
    :population_type,
    :potential_action,
    :same_as,
    :stat_type,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    constraint_property: "constraintProperty",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    measured_property: "measuredProperty",
    measurement_denominator: "measurementDenominator",
    measurement_method: "measurementMethod",
    measurement_qualifier: "measurementQualifier",
    measurement_technique: "measurementTechnique",
    name: "name",
    num_constraints: "numConstraints",
    owner: "owner",
    population_type: "populationType",
    potential_action: "potentialAction",
    same_as: "sameAs",
    stat_type: "statType",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "StatisticalVariable", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.StatisticalVariable` struct."
  def new, do: %__MODULE__{}
end
