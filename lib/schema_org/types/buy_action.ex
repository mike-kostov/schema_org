defmodule SchemaOrg.BuyAction do
  @moduledoc "The act of giving money to a seller in exchange for goods or services rendered. An agent buys an object, product, or service from a seller for a price. Reciprocal of SellAction."

  defstruct [
    :action_process,
    :action_status,
    :additional_type,
    :agent,
    :alternate_name,
    :description,
    :disambiguating_description,
    :end_time,
    :error,
    :identifier,
    :image,
    :instrument,
    :location,
    :main_entity_of_page,
    :name,
    :object,
    :owner,
    :participant,
    :potential_action,
    :price,
    :price_currency,
    :price_specification,
    :provider,
    :result,
    :same_as,
    :seller,
    :start_time,
    :subject_of,
    :target,
    :url,
    :vendor,
    :warranty_promise
  ]

  @json_keys %{
    action_process: "actionProcess",
    action_status: "actionStatus",
    additional_type: "additionalType",
    agent: "agent",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_time: "endTime",
    error: "error",
    identifier: "identifier",
    image: "image",
    instrument: "instrument",
    location: "location",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    object: "object",
    owner: "owner",
    participant: "participant",
    potential_action: "potentialAction",
    price: "price",
    price_currency: "priceCurrency",
    price_specification: "priceSpecification",
    provider: "provider",
    result: "result",
    same_as: "sameAs",
    seller: "seller",
    start_time: "startTime",
    subject_of: "subjectOf",
    target: "target",
    url: "url",
    vendor: "vendor",
    warranty_promise: "warrantyPromise"
  }

  @doc false
  def __schema_org__, do: %{type: "BuyAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.BuyAction` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `actionProcess` property.\n\nDescription of the process by which the action was performed."
  def action_process(%__MODULE__{} = thing, value) do
    %{thing | action_process: value}
  end

  @doc "Sets the Schema.org `actionStatus` property.\n\nIndicates the current disposition of the Action."
  def action_status(%__MODULE__{} = thing, value) do
    %{thing | action_status: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `agent` property.\n\nThe direct performer or driver of the action (animate or inanimate). E.g. *John* wrote a book."
  def agent(%__MODULE__{} = thing, value) do
    %{thing | agent: value}
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

  @doc "Sets the Schema.org `endTime` property.\n\nThe endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."
  def end_time(%__MODULE__{} = thing, value) do
    %{thing | end_time: value}
  end

  @doc "Sets the Schema.org `error` property.\n\nFor failed actions, more information on the cause of the failure. Consider using the Error type."
  def error(%__MODULE__{} = thing, value) do
    %{thing | error: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `instrument` property.\n\nThe object that helped the agent perform the action. E.g. John wrote a book with *a pen*."
  def instrument(%__MODULE__{} = thing, value) do
    %{thing | instrument: value}
  end

  @doc "Sets the Schema.org `location` property.\n\nThe location of, for example, where an event is happening, where an organization is located, or where an action takes place."
  def location(%__MODULE__{} = thing, value) do
    %{thing | location: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `object` property.\n\nThe object upon which the action is carried out, whose state is kept intact or changed. Also known as the semantic roles patient, affected or undergoer (which change their state) or theme (which doesn't). E.g. John read *a book*."
  def object(%__MODULE__{} = thing, value) do
    %{thing | object: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `participant` property.\n\nOther co-agents that participated in the action indirectly. E.g. John wrote a book with *Steve*."
  def participant(%__MODULE__{} = thing, value) do
    %{thing | participant: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `price` property.\n\nThe offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.\\n\\nUsage guidelines:\\n\\n* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.\\n* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a \"content=\" attribute for publishing simple machine-readable values alongside more human-friendly formatting.\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n      "
  def price(%__MODULE__{} = thing, value) do
    %{thing | price: value}
  end

  @doc "Sets the Schema.org `priceCurrency` property.\n\nThe currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."
  def price_currency(%__MODULE__{} = thing, value) do
    %{thing | price_currency: value}
  end

  @doc "Sets the Schema.org `priceSpecification` property.\n\nOne or more detailed price specifications, indicating the unit price and delivery or payment charges."
  def price_specification(%__MODULE__{} = thing, value) do
    %{thing | price_specification: value}
  end

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `result` property.\n\nThe result produced in the action. E.g. John wrote *a book*."
  def result(%__MODULE__{} = thing, value) do
    %{thing | result: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `seller` property.\n\nAn entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider."
  def seller(%__MODULE__{} = thing, value) do
    %{thing | seller: value}
  end

  @doc "Sets the Schema.org `startTime` property.\n\nThe startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."
  def start_time(%__MODULE__{} = thing, value) do
    %{thing | start_time: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `target` property.\n\nIndicates a target EntryPoint, or url, for an Action."
  def target(%__MODULE__{} = thing, value) do
    %{thing | target: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `vendor` property.\n\n'vendor' is an earlier term for 'seller'."
  def vendor(%__MODULE__{} = thing, value) do
    %{thing | vendor: value}
  end

  @doc "Sets the Schema.org `warrantyPromise` property.\n\nThe warranty promise(s) included in the offer."
  def warranty_promise(%__MODULE__{} = thing, value) do
    %{thing | warranty_promise: value}
  end
end
