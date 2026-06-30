defmodule SchemaOrg.GeoCoordinates do
  @moduledoc "The geographic coordinates of a place or event."

  defstruct [
    :additional_type,
    :address,
    :address_country,
    :alternate_name,
    :description,
    :disambiguating_description,
    :elevation,
    :identifier,
    :image,
    :latitude,
    :longitude,
    :main_entity_of_page,
    :name,
    :owner,
    :postal_code,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    address: "address",
    address_country: "addressCountry",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    elevation: "elevation",
    identifier: "identifier",
    image: "image",
    latitude: "latitude",
    longitude: "longitude",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    postal_code: "postalCode",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "GeoCoordinates", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.GeoCoordinates` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `address` property.\n\nPhysical address of the item."
  def address(%__MODULE__{} = thing, value) do
    %{thing | address: value}
  end

  @doc "Sets the Schema.org `addressCountry` property.\n\nThe country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example \"US\". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as \"SGP\" or a full country name such as \"Singapore\" can also be used."
  def address_country(%__MODULE__{} = thing, value) do
    %{thing | address_country: value}
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

  @doc "Sets the Schema.org `elevation` property.\n\nThe elevation of a location ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of the form 'NUMBER UNIT\\_OF\\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while numbers alone should be assumed to be a value in meters."
  def elevation(%__MODULE__{} = thing, value) do
    %{thing | elevation: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `latitude` property.\n\nThe latitude of a location. For example ```37.42242``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System))."
  def latitude(%__MODULE__{} = thing, value) do
    %{thing | latitude: value}
  end

  @doc "Sets the Schema.org `longitude` property.\n\nThe longitude of a location. For example ```-122.08585``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System))."
  def longitude(%__MODULE__{} = thing, value) do
    %{thing | longitude: value}
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

  @doc "Sets the Schema.org `postalCode` property.\n\nThe postal code. For example, 94043."
  def postal_code(%__MODULE__{} = thing, value) do
    %{thing | postal_code: value}
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
end
