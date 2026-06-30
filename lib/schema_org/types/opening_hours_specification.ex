defmodule SchemaOrg.OpeningHoursSpecification do
  @moduledoc "A structured value providing information about the opening hours of a place or a certain service inside a place.\\n\\n\nThe place is __open__ if the [[opens]] property is specified, and __closed__ otherwise.\\n\\nIf the value for the [[closes]] property is less than the value for the [[opens]] property then the hour range is assumed to span over the next day.\n      "

  defstruct [
    :additional_type,
    :alternate_name,
    :closes,
    :day_of_week,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :opens,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :valid_from,
    :valid_through
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    closes: "closes",
    day_of_week: "dayOfWeek",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    opens: "opens",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    valid_from: "validFrom",
    valid_through: "validThrough"
  }

  @doc false
  def __schema_org__, do: %{type: "OpeningHoursSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.OpeningHoursSpecification` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `closes` property.\n\nThe closing hour of the place or service on the given day(s) of the week."
  def closes(%__MODULE__{} = thing, value) do
    %{thing | closes: value}
  end

  @doc "Sets the Schema.org `dayOfWeek` property.\n\nThe day of the week for which these opening hours are valid."
  def day_of_week(%__MODULE__{} = thing, value) do
    %{thing | day_of_week: value}
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

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `opens` property.\n\nThe opening hour of the place or service on the given day(s) of the week."
  def opens(%__MODULE__{} = thing, value) do
    %{thing | opens: value}
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
end
