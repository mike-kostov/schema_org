defmodule SchemaOrg.Observation do
  @moduledoc "Instances of the class [[Observation]] are used to specify observations about an entity at a particular time. The principal properties of an [[Observation]] are [[observationAbout]], [[measuredProperty]], [[statType]], [[value] and [[observationDate]]  and [[measuredProperty]]. Some but not all Observations represent a [[QuantitativeValue]]. Quantitative observations can be about a [[StatisticalVariable]], which is an abstract specification about which we can make observations that are grounded at a particular location and time.\n\nObservations can also encode a subset of simple RDF-like statements (its observationAbout, a StatisticalVariable, defining the measuredPoperty; its observationAbout property indicating the entity the statement is about, and [[value]] )\n\nIn the context of a quantitative knowledge graph, typical properties could include [[measuredProperty]], [[observationAbout]], [[observationDate]], [[value]], [[unitCode]], [[unitText]], [[measurementMethod]].\n    "

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

  @doc "Sets the Schema.org `additionalProperty` property.\n\nA property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.\n"
  def additional_property(%__MODULE__{} = thing, value) do
    %{thing | additional_property: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `marginOfError` property.\n\nA [[marginOfError]] for an [[Observation]]."
  def margin_of_error(%__MODULE__{} = thing, value) do
    %{thing | margin_of_error: value}
  end

  @doc "Sets the Schema.org `maxValue` property.\n\nThe upper value of some characteristic or property."
  def max_value(%__MODULE__{} = thing, value) do
    %{thing | max_value: value}
  end

  @doc "Sets the Schema.org `measuredProperty` property.\n\nThe measuredProperty of an [[Observation]], typically via its [[StatisticalVariable]]. There are various kinds of applicable [[Property]]: a schema.org property, a property from other RDF-compatible systems, e.g. W3C RDF Data Cube, Data Commons, Wikidata, or schema.org extensions such as [GS1's](https://www.gs1.org/voc/?show=properties)."
  def measured_property(%__MODULE__{} = thing, value) do
    %{thing | measured_property: value}
  end

  @doc "Sets the Schema.org `measurementDenominator` property.\n\nIdentifies the denominator variable when an observation represents a ratio or percentage."
  def measurement_denominator(%__MODULE__{} = thing, value) do
    %{thing | measurement_denominator: value}
  end

  @doc "Sets the Schema.org `measurementMethod` property.\n\nA subproperty of [[measurementTechnique]] that can be used for specifying specific methods, in particular via [[MeasurementMethodEnum]]."
  def measurement_method(%__MODULE__{} = thing, value) do
    %{thing | measurement_method: value}
  end

  @doc "Sets the Schema.org `measurementQualifier` property.\n\nProvides additional qualification to an observation. For example, a GDP observation measures the Nominal value."
  def measurement_qualifier(%__MODULE__{} = thing, value) do
    %{thing | measurement_qualifier: value}
  end

  @doc "Sets the Schema.org `measurementTechnique` property.\n\nA technique, method or technology used in an [[Observation]], [[StatisticalVariable]] or [[Dataset]] (or [[DataDownload]], [[DataCatalog]]), corresponding to the method used for measuring the corresponding variable(s) (for datasets, described using [[variableMeasured]]; for [[Observation]], a [[StatisticalVariable]]). Often but not necessarily each [[variableMeasured]] will have an explicit representation as (or mapping to) an property such as those defined in Schema.org, or other RDF vocabularies and \"knowledge graphs\". In that case the subproperty of [[variableMeasured]] called [[measuredProperty]] is applicable.\n    \nThe [[measurementTechnique]] property helps when extra clarification is needed about how a [[measuredProperty]] was measured. This is oriented towards scientific and scholarly dataset publication but may have broader applicability; it is not intended as a full representation of measurement, but can often serve as a high level summary for dataset discovery. \n\nFor example, if [[variableMeasured]] is: molecule concentration, [[measurementTechnique]] could be: \"mass spectrometry\" or \"nmr spectroscopy\" or \"colorimetry\" or \"immunofluorescence\". If the [[variableMeasured]] is \"depression rating\", the [[measurementTechnique]] could be \"Zung Scale\" or \"HAM-D\" or \"Beck Depression Inventory\". \n\nIf there are several [[variableMeasured]] properties recorded for some given data object, use a [[PropertyValue]] for each [[variableMeasured]] and attach the corresponding [[measurementTechnique]]. The value can also be from an enumeration, organized as a [[MeasurementMethodEnum]]."
  def measurement_technique(%__MODULE__{} = thing, value) do
    %{thing | measurement_technique: value}
  end

  @doc "Sets the Schema.org `minValue` property.\n\nThe lower value of some characteristic or property."
  def min_value(%__MODULE__{} = thing, value) do
    %{thing | min_value: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `observationAbout` property.\n\nThe [[observationAbout]] property identifies an entity, often a [[Place]], associated with an [[Observation]]."
  def observation_about(%__MODULE__{} = thing, value) do
    %{thing | observation_about: value}
  end

  @doc "Sets the Schema.org `observationDate` property.\n\nThe observationDate of an [[Observation]]."
  def observation_date(%__MODULE__{} = thing, value) do
    %{thing | observation_date: value}
  end

  @doc "Sets the Schema.org `observationPeriod` property.\n\nThe length of time an Observation took place over. The format follows `P[0-9]*[Y|M|D|h|m|s]`. For example, P1Y is Period 1 Year, P3M is Period 3 Months, P3h is Period 3 hours."
  def observation_period(%__MODULE__{} = thing, value) do
    %{thing | observation_period: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `unitCode` property.\n\nThe unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon."
  def unit_code(%__MODULE__{} = thing, value) do
    %{thing | unit_code: value}
  end

  @doc "Sets the Schema.org `unitText` property.\n\nA string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for\n<a href='unitCode'>unitCode</a>."
  def unit_text(%__MODULE__{} = thing, value) do
    %{thing | unit_text: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `value` property.\n\nThe value of a [[QuantitativeValue]] (including [[Observation]]) or property value node.\\n\\n* For [[QuantitativeValue]] and [[MonetaryAmount]], the recommended type for values is 'Number'.\\n* For [[PropertyValue]], it can be 'Text', 'Number', 'Boolean', or 'StructuredValue'.\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator."
  def value(%__MODULE__{} = thing, value) do
    %{thing | value: value}
  end

  @doc "Sets the Schema.org `valueReference` property.\n\nA secondary value that provides additional information on the original value, e.g. a reference temperature or a type of measurement."
  def value_reference(%__MODULE__{} = thing, value) do
    %{thing | value_reference: value}
  end

  @doc "Sets the Schema.org `variableMeasured` property.\n\nThe variableMeasured property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue, or more explicitly as a [[StatisticalVariable]]."
  def variable_measured(%__MODULE__{} = thing, value) do
    %{thing | variable_measured: value}
  end
end
