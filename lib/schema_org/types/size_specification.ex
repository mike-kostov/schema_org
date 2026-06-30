defmodule SchemaOrg.SizeSpecification do
  @moduledoc "Size related properties of a product, typically a size code ([[name]]) and optionally a [[sizeSystem]], [[sizeGroup]], and product measurements ([[hasMeasurement]]). In addition, the intended audience can be defined through [[suggestedAge]], [[suggestedGender]], and suggested body measurements ([[suggestedMeasurement]])."

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

  @doc "Sets the Schema.org `equal` property.\n\nThis ordering relation for qualitative values indicates that the subject is equal to the object."
  def equal(%__MODULE__{} = thing, value) do
    %{thing | equal: value}
  end

  @doc "Sets the Schema.org `greater` property.\n\nThis ordering relation for qualitative values indicates that the subject is greater than the object."
  def greater(%__MODULE__{} = thing, value) do
    %{thing | greater: value}
  end

  @doc "Sets the Schema.org `greaterOrEqual` property.\n\nThis ordering relation for qualitative values indicates that the subject is greater than or equal to the object."
  def greater_or_equal(%__MODULE__{} = thing, value) do
    %{thing | greater_or_equal: value}
  end

  @doc "Sets the Schema.org `hasMeasurement` property.\n\nA measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings."
  def has_measurement(%__MODULE__{} = thing, value) do
    %{thing | has_measurement: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `lesser` property.\n\nThis ordering relation for qualitative values indicates that the subject is lesser than the object."
  def lesser(%__MODULE__{} = thing, value) do
    %{thing | lesser: value}
  end

  @doc "Sets the Schema.org `lesserOrEqual` property.\n\nThis ordering relation for qualitative values indicates that the subject is lesser than or equal to the object."
  def lesser_or_equal(%__MODULE__{} = thing, value) do
    %{thing | lesser_or_equal: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `nonEqual` property.\n\nThis ordering relation for qualitative values indicates that the subject is not equal to the object."
  def non_equal(%__MODULE__{} = thing, value) do
    %{thing | non_equal: value}
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

  @doc "Sets the Schema.org `sizeGroup` property.\n\nThe size group (also known as \"size type\") for a product's size. Size groups are common in the fashion industry to define size segments and suggested audiences for wearable products. Multiple values can be combined, for example \"men's big and tall\", \"petite maternity\" or \"regular\"."
  def size_group(%__MODULE__{} = thing, value) do
    %{thing | size_group: value}
  end

  @doc "Sets the Schema.org `sizeSystem` property.\n\nThe size system used to identify a product's size. Typically either a standard (for example, \"GS1\" or \"ISO-EN13402\"), country code (for example \"US\" or \"JP\"), or a measuring system (for example \"Metric\" or \"Imperial\")."
  def size_system(%__MODULE__{} = thing, value) do
    %{thing | size_system: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `suggestedAge` property.\n\nThe age or age range for the intended audience or person, for example 3-12 months for infants, 1-5 years for toddlers."
  def suggested_age(%__MODULE__{} = thing, value) do
    %{thing | suggested_age: value}
  end

  @doc "Sets the Schema.org `suggestedGender` property.\n\nThe suggested gender of the intended person or audience, for example \"male\", \"female\", or \"unisex\"."
  def suggested_gender(%__MODULE__{} = thing, value) do
    %{thing | suggested_gender: value}
  end

  @doc "Sets the Schema.org `suggestedMeasurement` property.\n\nA suggested range of body measurements for the intended audience or person, for example inseam between 32 and 34 inches or height between 170 and 190 cm. Typically found on a size chart for wearable products."
  def suggested_measurement(%__MODULE__{} = thing, value) do
    %{thing | suggested_measurement: value}
  end

  @doc "Sets the Schema.org `supersededBy` property.\n\nRelates a term (i.e. a property, class or enumeration) to one that supersedes it."
  def superseded_by(%__MODULE__{} = thing, value) do
    %{thing | superseded_by: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `valueReference` property.\n\nA secondary value that provides additional information on the original value, e.g. a reference temperature or a type of measurement."
  def value_reference(%__MODULE__{} = thing, value) do
    %{thing | value_reference: value}
  end
end
