defmodule SchemaOrg.MedicalAudience do
  @moduledoc "Target audiences for medical web pages."

  defstruct [
    :additional_type,
    :alternate_name,
    :audience_type,
    :description,
    :disambiguating_description,
    :geographic_area,
    :health_condition,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :required_gender,
    :required_max_age,
    :required_min_age,
    :same_as,
    :subject_of,
    :suggested_age,
    :suggested_gender,
    :suggested_max_age,
    :suggested_measurement,
    :suggested_min_age,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    audience_type: "audienceType",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    geographic_area: "geographicArea",
    health_condition: "healthCondition",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    required_gender: "requiredGender",
    required_max_age: "requiredMaxAge",
    required_min_age: "requiredMinAge",
    same_as: "sameAs",
    subject_of: "subjectOf",
    suggested_age: "suggestedAge",
    suggested_gender: "suggestedGender",
    suggested_max_age: "suggestedMaxAge",
    suggested_measurement: "suggestedMeasurement",
    suggested_min_age: "suggestedMinAge",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MedicalAudience", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalAudience` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `audienceType` property.\n\nThe target group associated with a given audience (e.g. veterans, car owners, musicians, etc.)."
  def audience_type(%__MODULE__{} = thing, value) do
    %{thing | audience_type: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `geographicArea` property.\n\nThe geographic area associated with the audience."
  def geographic_area(%__MODULE__{} = thing, value) do
    %{thing | geographic_area: value}
  end

  @doc "Sets the Schema.org `healthCondition` property.\n\nSpecifying the health condition(s) of a patient, medical study, or other target audience."
  def health_condition(%__MODULE__{} = thing, value) do
    %{thing | health_condition: value}
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

  @doc "Sets the Schema.org `requiredGender` property.\n\nAudiences defined by a person's gender."
  def required_gender(%__MODULE__{} = thing, value) do
    %{thing | required_gender: value}
  end

  @doc "Sets the Schema.org `requiredMaxAge` property.\n\nAudiences defined by a person's maximum age."
  def required_max_age(%__MODULE__{} = thing, value) do
    %{thing | required_max_age: value}
  end

  @doc "Sets the Schema.org `requiredMinAge` property.\n\nAudiences defined by a person's minimum age."
  def required_min_age(%__MODULE__{} = thing, value) do
    %{thing | required_min_age: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
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

  @doc "Sets the Schema.org `suggestedMaxAge` property.\n\nMaximum recommended age in years for the audience or user."
  def suggested_max_age(%__MODULE__{} = thing, value) do
    %{thing | suggested_max_age: value}
  end

  @doc "Sets the Schema.org `suggestedMeasurement` property.\n\nA suggested range of body measurements for the intended audience or person, for example inseam between 32 and 34 inches or height between 170 and 190 cm. Typically found on a size chart for wearable products."
  def suggested_measurement(%__MODULE__{} = thing, value) do
    %{thing | suggested_measurement: value}
  end

  @doc "Sets the Schema.org `suggestedMinAge` property.\n\nMinimum recommended age in years for the audience or user."
  def suggested_min_age(%__MODULE__{} = thing, value) do
    %{thing | suggested_min_age: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
