defmodule SchemaOrg.TouristTrip do
  @moduledoc "A tourist trip. A created itinerary of visits to one or more places of interest ([[TouristAttraction]]/[[TouristDestination]]) often linked by a similar theme, geographic area, or interest to a particular [[touristType]]. The [UNWTO](http://www2.unwto.org/) defines tourism trip as the Trip taken by visitors.\n  (See examples below.)"

  defstruct [
    :additional_type,
    :alternate_name,
    :arrival_time,
    :departure_time,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :itinerary,
    :main_entity_of_page,
    :name,
    :offers,
    :owner,
    :part_of_trip,
    :potential_action,
    :provider,
    :same_as,
    :sub_trip,
    :subject_of,
    :tourist_type,
    :trip_origin,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    arrival_time: "arrivalTime",
    departure_time: "departureTime",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    itinerary: "itinerary",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    offers: "offers",
    owner: "owner",
    part_of_trip: "partOfTrip",
    potential_action: "potentialAction",
    provider: "provider",
    same_as: "sameAs",
    sub_trip: "subTrip",
    subject_of: "subjectOf",
    tourist_type: "touristType",
    trip_origin: "tripOrigin",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "TouristTrip", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TouristTrip` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `arrivalTime` property.\n\nThe expected arrival time."
  def arrival_time(%__MODULE__{} = thing, value) do
    %{thing | arrival_time: value}
  end

  @doc "Sets the Schema.org `departureTime` property.\n\nThe expected departure time."
  def departure_time(%__MODULE__{} = thing, value) do
    %{thing | departure_time: value}
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

  @doc "Sets the Schema.org `itinerary` property.\n\nDestination(s) ( [[Place]] ) that make up a trip. For a trip where destination order is important use [[ItemList]] to specify that order (see examples)."
  def itinerary(%__MODULE__{} = thing, value) do
    %{thing | itinerary: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `offers` property.\n\nAn offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.\n      "
  def offers(%__MODULE__{} = thing, value) do
    %{thing | offers: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `partOfTrip` property.\n\nIdentifies that this [[Trip]] is a subTrip of another Trip.  For example Day 1, Day 2, etc. of a multi-day trip."
  def part_of_trip(%__MODULE__{} = thing, value) do
    %{thing | part_of_trip: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `subTrip` property.\n\nIdentifies a [[Trip]] that is a subTrip of this Trip.  For example Day 1, Day 2, etc. of a multi-day trip."
  def sub_trip(%__MODULE__{} = thing, value) do
    %{thing | sub_trip: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `touristType` property.\n\nAttraction suitable for type(s) of tourist. E.g. children, visitors from a particular country, etc. "
  def tourist_type(%__MODULE__{} = thing, value) do
    %{thing | tourist_type: value}
  end

  @doc "Sets the Schema.org `tripOrigin` property.\n\nThe location of origin of the trip, prior to any destination(s)."
  def trip_origin(%__MODULE__{} = thing, value) do
    %{thing | trip_origin: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
