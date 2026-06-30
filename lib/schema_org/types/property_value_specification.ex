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

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `defaultValue` property.\n\nThe default value of the input.  For properties that expect a literal, the default is a literal value, for properties that expect an object, it's an ID reference to one of the current values."
  def default_value(%__MODULE__{} = thing, value) do
    %{thing | default_value: value}
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

  @doc "Sets the Schema.org `maxValue` property.\n\nThe upper value of some characteristic or property."
  def max_value(%__MODULE__{} = thing, value) do
    %{thing | max_value: value}
  end

  @doc "Sets the Schema.org `minValue` property.\n\nThe lower value of some characteristic or property."
  def min_value(%__MODULE__{} = thing, value) do
    %{thing | min_value: value}
  end

  @doc "Sets the Schema.org `multipleValues` property.\n\nWhether multiple values are allowed for the property.  Default is false."
  def multiple_values(%__MODULE__{} = thing, value) do
    %{thing | multiple_values: value}
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

  @doc "Sets the Schema.org `readonlyValue` property.\n\nWhether or not a property is mutable.  Default is false. Specifying this for a property that also has a value makes it act similar to a \"hidden\" input in an HTML form."
  def readonly_value(%__MODULE__{} = thing, value) do
    %{thing | readonly_value: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `stepValue` property.\n\nThe stepValue attribute indicates the granularity that is expected (and required) of the value in a PropertyValueSpecification."
  def step_value(%__MODULE__{} = thing, value) do
    %{thing | step_value: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `valueMaxLength` property.\n\nSpecifies the allowed range for number of characters in a literal value."
  def value_max_length(%__MODULE__{} = thing, value) do
    %{thing | value_max_length: value}
  end

  @doc "Sets the Schema.org `valueMinLength` property.\n\nSpecifies the minimum allowed range for number of characters in a literal value."
  def value_min_length(%__MODULE__{} = thing, value) do
    %{thing | value_min_length: value}
  end

  @doc "Sets the Schema.org `valueName` property.\n\nIndicates the name of the PropertyValueSpecification to be used in URL templates and form encoding in a manner analogous to HTML's input@name."
  def value_name(%__MODULE__{} = thing, value) do
    %{thing | value_name: value}
  end

  @doc "Sets the Schema.org `valuePattern` property.\n\nSpecifies a regular expression for testing literal values according to the HTML spec."
  def value_pattern(%__MODULE__{} = thing, value) do
    %{thing | value_pattern: value}
  end

  @doc "Sets the Schema.org `valueRequired` property.\n\nWhether the property must be filled in to complete the action.  Default is false."
  def value_required(%__MODULE__{} = thing, value) do
    %{thing | value_required: value}
  end
end
