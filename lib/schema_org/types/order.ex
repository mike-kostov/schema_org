defmodule SchemaOrg.Order do
  @moduledoc "An order is a confirmation of a transaction (a receipt), which can contain multiple line items, each represented by an Offer that has been accepted by the customer."

  defstruct [
    :accepted_offer,
    :additional_type,
    :alternate_name,
    :billing_address,
    :broker,
    :confirmation_number,
    :customer,
    :description,
    :disambiguating_description,
    :discount,
    :discount_code,
    :discount_currency,
    :identifier,
    :image,
    :is_gift,
    :main_entity_of_page,
    :merchant,
    :name,
    :order_date,
    :order_delivery,
    :order_number,
    :order_status,
    :ordered_item,
    :owner,
    :part_of_invoice,
    :payment_due,
    :payment_due_date,
    :payment_method,
    :payment_method_id,
    :payment_url,
    :potential_action,
    :same_as,
    :seller,
    :subject_of,
    :url
  ]

  @json_keys %{
    accepted_offer: "acceptedOffer",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    billing_address: "billingAddress",
    broker: "broker",
    confirmation_number: "confirmationNumber",
    customer: "customer",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    discount: "discount",
    discount_code: "discountCode",
    discount_currency: "discountCurrency",
    identifier: "identifier",
    image: "image",
    is_gift: "isGift",
    main_entity_of_page: "mainEntityOfPage",
    merchant: "merchant",
    name: "name",
    order_date: "orderDate",
    order_delivery: "orderDelivery",
    order_number: "orderNumber",
    order_status: "orderStatus",
    ordered_item: "orderedItem",
    owner: "owner",
    part_of_invoice: "partOfInvoice",
    payment_due: "paymentDue",
    payment_due_date: "paymentDueDate",
    payment_method: "paymentMethod",
    payment_method_id: "paymentMethodId",
    payment_url: "paymentUrl",
    potential_action: "potentialAction",
    same_as: "sameAs",
    seller: "seller",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Order", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Order` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `acceptedOffer` property.\n\nThe offer(s) -- e.g., product, quantity and price combinations -- included in the order."
  def accepted_offer(%__MODULE__{} = thing, value) do
    %{thing | accepted_offer: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `billingAddress` property.\n\nThe billing address for the order."
  def billing_address(%__MODULE__{} = thing, value) do
    %{thing | billing_address: value}
  end

  @doc "Sets the Schema.org `broker` property.\n\nAn entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred."
  def broker(%__MODULE__{} = thing, value) do
    %{thing | broker: value}
  end

  @doc "Sets the Schema.org `confirmationNumber` property.\n\nA number that confirms the given order or payment has been received."
  def confirmation_number(%__MODULE__{} = thing, value) do
    %{thing | confirmation_number: value}
  end

  @doc "Sets the Schema.org `customer` property.\n\nParty placing the order or paying the invoice."
  def customer(%__MODULE__{} = thing, value) do
    %{thing | customer: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `discount` property.\n\nAny discount applied (to an Order)."
  def discount(%__MODULE__{} = thing, value) do
    %{thing | discount: value}
  end

  @doc "Sets the Schema.org `discountCode` property.\n\nCode used to redeem a discount."
  def discount_code(%__MODULE__{} = thing, value) do
    %{thing | discount_code: value}
  end

  @doc "Sets the Schema.org `discountCurrency` property.\n\nThe currency of the discount.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."
  def discount_currency(%__MODULE__{} = thing, value) do
    %{thing | discount_currency: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `isGift` property.\n\nIndicates whether the offer was accepted as a gift for someone other than the buyer."
  def is_gift(%__MODULE__{} = thing, value) do
    %{thing | is_gift: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `merchant` property.\n\n'merchant' is an out-dated term for 'seller'."
  def merchant(%__MODULE__{} = thing, value) do
    %{thing | merchant: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `orderDate` property.\n\nDate order was placed."
  def order_date(%__MODULE__{} = thing, value) do
    %{thing | order_date: value}
  end

  @doc "Sets the Schema.org `orderDelivery` property.\n\nThe delivery of the parcel related to this order or order item."
  def order_delivery(%__MODULE__{} = thing, value) do
    %{thing | order_delivery: value}
  end

  @doc "Sets the Schema.org `orderNumber` property.\n\nThe identifier of the transaction."
  def order_number(%__MODULE__{} = thing, value) do
    %{thing | order_number: value}
  end

  @doc "Sets the Schema.org `orderStatus` property.\n\nThe current status of the order."
  def order_status(%__MODULE__{} = thing, value) do
    %{thing | order_status: value}
  end

  @doc "Sets the Schema.org `orderedItem` property.\n\nThe item ordered."
  def ordered_item(%__MODULE__{} = thing, value) do
    %{thing | ordered_item: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `partOfInvoice` property.\n\nThe order is being paid as part of the referenced Invoice."
  def part_of_invoice(%__MODULE__{} = thing, value) do
    %{thing | part_of_invoice: value}
  end

  @doc "Sets the Schema.org `paymentDue` property.\n\nThe date that payment is due."
  def payment_due(%__MODULE__{} = thing, value) do
    %{thing | payment_due: value}
  end

  @doc "Sets the Schema.org `paymentDueDate` property.\n\nThe date that payment is due."
  def payment_due_date(%__MODULE__{} = thing, value) do
    %{thing | payment_due_date: value}
  end

  @doc "Sets the Schema.org `paymentMethod` property.\n\nThe name of the credit card or other method of payment for the order."
  def payment_method(%__MODULE__{} = thing, value) do
    %{thing | payment_method: value}
  end

  @doc "Sets the Schema.org `paymentMethodId` property.\n\nAn identifier for the method of payment used (e.g. the last 4 digits of the credit card)."
  def payment_method_id(%__MODULE__{} = thing, value) do
    %{thing | payment_method_id: value}
  end

  @doc "Sets the Schema.org `paymentUrl` property.\n\nThe URL for sending a payment."
  def payment_url(%__MODULE__{} = thing, value) do
    %{thing | payment_url: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `seller` property.\n\nAn entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider."
  def seller(%__MODULE__{} = thing, value) do
    %{thing | seller: value}
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
