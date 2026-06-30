defmodule SchemaOrg.Observation do
  @moduledoc "Instances of the class `Observation` are used to specify observations about an entity at a particular time. The principal properties of an `Observation` are `observationAbout`, `measuredProperty`, `statType`, [[value] and `observationDate`  and `measuredProperty`. Some but not all Observations represent a `QuantitativeValue`. Quantitative observations can be about a `StatisticalVariable`, which is an abstract specification about which we can make observations that are grounded at a particular location and time.\n\nObservations can also encode a subset of simple RDF-like statements (its observationAbout, a StatisticalVariable, defining the measuredPoperty; its observationAbout property indicating the entity the statement is about, and `value` )\n\nIn the context of a quantitative knowledge graph, typical properties could include `measuredProperty`, `observationAbout`, `observationDate`, `value`, `unitCode`, `unitText`, `measurementMethod`."

  defstruct [
    :additional_property,
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :margin_of_error,
    :max_value,
    :measured_property,
    :measurement_denominator,
    :measurement_method,
    :measurement_qualifier,
    :measurement_technique,
    :min_value,
    :name,
    :observation_about,
    :observation_date,
    :observation_period,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :unit_code,
    :unit_text,
    :url,
    :value,
    :value_reference,
    :variable_measured
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
    margin_of_error: "marginOfError",
    max_value: "maxValue",
    measured_property: "measuredProperty",
    measurement_denominator: "measurementDenominator",
    measurement_method: "measurementMethod",
    measurement_qualifier: "measurementQualifier",
    measurement_technique: "measurementTechnique",
    min_value: "minValue",
    name: "name",
    observation_about: "observationAbout",
    observation_date: "observationDate",
    observation_period: "observationPeriod",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    unit_code: "unitCode",
    unit_text: "unitText",
    url: "url",
    value: "value",
    value_reference: "valueReference",
    variable_measured: "variableMeasured"
  }

  @doc false
  def __schema_org__, do: %{type: "Observation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Observation` struct."
  def new, do: %__MODULE__{}
end
