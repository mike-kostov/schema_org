defmodule SchemaOrg.Ticket do
  @moduledoc "Used to describe a ticket to an event, a flight, a bus ride, etc."

  defstruct [
    :additional_type,
    :alternate_name,
    :date_issued,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :issued_by,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :price_currency,
    :same_as,
    :subject_of,
    :ticket_number,
    :ticket_token,
    :ticketed_seat,
    :total_price,
    :under_name,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    date_issued: "dateIssued",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    issued_by: "issuedBy",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    price_currency: "priceCurrency",
    same_as: "sameAs",
    subject_of: "subjectOf",
    ticket_number: "ticketNumber",
    ticket_token: "ticketToken",
    ticketed_seat: "ticketedSeat",
    total_price: "totalPrice",
    under_name: "underName",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Ticket", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Ticket` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `dateIssued` property.\n\nThe date the ticket was issued."
  def date_issued(%__MODULE__{} = thing, value) do
    %{thing | date_issued: value}
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

  @doc "Sets the Schema.org `issuedBy` property.\n\nThe organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]]."
  def issued_by(%__MODULE__{} = thing, value) do
    %{thing | issued_by: value}
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

  @doc "Sets the Schema.org `priceCurrency` property.\n\nThe currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."
  def price_currency(%__MODULE__{} = thing, value) do
    %{thing | price_currency: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `ticketNumber` property.\n\nThe unique identifier for the ticket."
  def ticket_number(%__MODULE__{} = thing, value) do
    %{thing | ticket_number: value}
  end

  @doc "Sets the Schema.org `ticketToken` property.\n\nReference to an asset (e.g., Barcode, QR code image or PDF) usable for entrance."
  def ticket_token(%__MODULE__{} = thing, value) do
    %{thing | ticket_token: value}
  end

  @doc "Sets the Schema.org `ticketedSeat` property.\n\nThe seat associated with the ticket."
  def ticketed_seat(%__MODULE__{} = thing, value) do
    %{thing | ticketed_seat: value}
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
