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

  @doc "Sets the Schema.org `hoursAvailable` property.\n\nThe hours during which this service or contact is available."
  def hours_available(%__MODULE__{} = thing, value) do
    %{thing | hours_available: value}
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

  @doc "Sets the Schema.org `maxValue` property.\n\nThe upper value of some characteristic or property."
  def max_value(%__MODULE__{} = thing, value) do
    %{thing | max_value: value}
  end

  @doc "Sets the Schema.org `measurementMethod` property.\n\nA subproperty of [[measurementTechnique]] that can be used for specifying specific methods, in particular via [[MeasurementMethodEnum]]."
  def measurement_method(%__MODULE__{} = thing, value) do
    %{thing | measurement_method: value}
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

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `propertyID` property.\n\nA commonly used identifier for the characteristic represented by the property, e.g. a manufacturer or a standard code for a property. propertyID can be\n(1) a prefixed string, mainly meant to be used with standards for product properties; (2) a site-specific, non-prefixed string (e.g. the primary key of the property or the vendor-specific ID of the property), or (3)\na URL indicating the type of the property, either pointing to an external vocabulary, or a Web resource that describes the property (e.g. a glossary entry).\nStandards bodies should promote a standard prefix for the identifiers of properties from their standards."
  def property_id(%__MODULE__{} = thing, value) do
    %{thing | property_id: value}
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

  @doc "Sets the Schema.org `validFrom` property.\n\nThe date when the item becomes valid."
  def valid_from(%__MODULE__{} = thing, value) do
    %{thing | valid_from: value}
  end

  @doc "Sets the Schema.org `validThrough` property.\n\nThe date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours."
  def valid_through(%__MODULE__{} = thing, value) do
    %{thing | valid_through: value}
  end

  @doc "Sets the Schema.org `value` property.\n\nThe value of a [[QuantitativeValue]] (including [[Observation]]) or property value node.\\n\\n* For [[QuantitativeValue]] and [[MonetaryAmount]], the recommended type for values is 'Number'.\\n* For [[PropertyValue]], it can be 'Text', 'Number', 'Boolean', or 'StructuredValue'.\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator."
  def value(%__MODULE__{} = thing, value) do
    %{thing | value: value}
  end

  @doc "Sets the Schema.org `valueReference` property.\n\nA secondary value that provides additional information on the original value, e.g. a reference temperature or a type of measurement."
  def value_reference(%__MODULE__{} = thing, value) do
    %{thing | value_reference: value}
  end
end
