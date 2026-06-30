defmodule SchemaOrg.TaxiReservation do
  @moduledoc "A reservation for a taxi.\\n\\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, use [[Offer]]."

  defstruct [
    :additional_type,
    :alternate_name,
    :booking_agent,
    :booking_time,
    :broker,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :modified_time,
    :name,
    :owner,
    :party_size,
    :pickup_location,
    :pickup_time,
    :potential_action,
    :price_currency,
    :program_membership_used,
    :provider,
    :reservation_for,
    :reservation_id,
    :reservation_status,
    :reserved_ticket,
    :same_as,
    :subject_of,
    :total_price,
    :under_name,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    booking_agent: "bookingAgent",
    booking_time: "bookingTime",
    broker: "broker",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    modified_time: "modifiedTime",
    name: "name",
    owner: "owner",
    party_size: "partySize",
    pickup_location: "pickupLocation",
    pickup_time: "pickupTime",
    potential_action: "potentialAction",
    price_currency: "priceCurrency",
    program_membership_used: "programMembershipUsed",
    provider: "provider",
    reservation_for: "reservationFor",
    reservation_id: "reservationId",
    reservation_status: "reservationStatus",
    reserved_ticket: "reservedTicket",
    same_as: "sameAs",
    subject_of: "subjectOf",
    total_price: "totalPrice",
    under_name: "underName",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "TaxiReservation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TaxiReservation` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `bookingAgent` property.\n\n'bookingAgent' is an out-dated term indicating a 'broker' that serves as a booking agent."
  def booking_agent(%__MODULE__{} = thing, value) do
    %{thing | booking_agent: value}
  end

  @doc "Sets the Schema.org `bookingTime` property.\n\nThe date and time the reservation was booked."
  def booking_time(%__MODULE__{} = thing, value) do
    %{thing | booking_time: value}
  end

  @doc "Sets the Schema.org `broker` property.\n\nAn entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred."
  def broker(%__MODULE__{} = thing, value) do
    %{thing | broker: value}
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

  @doc "Sets the Schema.org `modifiedTime` property.\n\nThe date and time the reservation was modified."
  def modified_time(%__MODULE__{} = thing, value) do
    %{thing | modified_time: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `partySize` property.\n\nNumber of people the reservation should accommodate."
  def party_size(%__MODULE__{} = thing, value) do
    %{thing | party_size: value}
  end

  @doc "Sets the Schema.org `pickupLocation` property.\n\nWhere a taxi will pick up a passenger or a rental car can be picked up."
  def pickup_location(%__MODULE__{} = thing, value) do
    %{thing | pickup_location: value}
  end

  @doc "Sets the Schema.org `pickupTime` property.\n\nWhen a taxi will pick up a passenger or a rental car can be picked up."
  def pickup_time(%__MODULE__{} = thing, value) do
    %{thing | pickup_time: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `priceCurrency` property.\n\nThe currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."
  def price_currency(%__MODULE__{} = thing, value) do
    %{thing | price_currency: value}
  end

  @doc "Sets the Schema.org `programMembershipUsed` property.\n\nAny membership in a frequent flyer, hotel loyalty program, etc. being applied to the reservation."
  def program_membership_used(%__MODULE__{} = thing, value) do
    %{thing | program_membership_used: value}
  end

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `reservationFor` property.\n\nThe thing -- flight, event, restaurant, etc. being reserved."
  def reservation_for(%__MODULE__{} = thing, value) do
    %{thing | reservation_for: value}
  end

  @doc "Sets the Schema.org `reservationId` property.\n\nA unique identifier for the reservation."
  def reservation_id(%__MODULE__{} = thing, value) do
    %{thing | reservation_id: value}
  end

  @doc "Sets the Schema.org `reservationStatus` property.\n\nThe current status of the reservation."
  def reservation_status(%__MODULE__{} = thing, value) do
    %{thing | reservation_status: value}
  end

  @doc "Sets the Schema.org `reservedTicket` property.\n\nA ticket associated with the reservation."
  def reserved_ticket(%__MODULE__{} = thing, value) do
    %{thing | reserved_ticket: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `totalPrice` property.\n\nThe total price for the reservation or ticket, including applicable taxes, shipping, etc.\\n\\nUsage guidelines:\\n\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator."
  def total_price(%__MODULE__{} = thing, value) do
    %{thing | total_price: value}
  end

  @doc "Sets the Schema.org `underName` property.\n\nThe person or organization the reservation or ticket is for."
  def under_name(%__MODULE__{} = thing, value) do
    %{thing | under_name: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
