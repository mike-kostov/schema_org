defmodule SchemaOrg.Invoice do
  @moduledoc "A statement of the money due for goods or services; a bill."

  defstruct [
    :account_id,
    :additional_type,
    :alternate_name,
    :billing_period,
    :broker,
    :category,
    :confirmation_number,
    :customer,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :minimum_payment_due,
    :name,
    :owner,
    :payment_due,
    :payment_due_date,
    :payment_method,
    :payment_method_id,
    :payment_status,
    :potential_action,
    :provider,
    :references_order,
    :same_as,
    :scheduled_payment_date,
    :subject_of,
    :total_payment_due,
    :url
  ]

  @json_keys %{
    account_id: "accountId",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    billing_period: "billingPeriod",
    broker: "broker",
    category: "category",
    confirmation_number: "confirmationNumber",
    customer: "customer",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    minimum_payment_due: "minimumPaymentDue",
    name: "name",
    owner: "owner",
    payment_due: "paymentDue",
    payment_due_date: "paymentDueDate",
    payment_method: "paymentMethod",
    payment_method_id: "paymentMethodId",
    payment_status: "paymentStatus",
    potential_action: "potentialAction",
    provider: "provider",
    references_order: "referencesOrder",
    same_as: "sameAs",
    scheduled_payment_date: "scheduledPaymentDate",
    subject_of: "subjectOf",
    total_payment_due: "totalPaymentDue",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Invoice", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Invoice` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `accountId` property.\n\nThe identifier for the account the payment will be applied to."
  def account_id(%__MODULE__{} = thing, value) do
    %{thing | account_id: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `billingPeriod` property.\n\nThe time interval used to compute the invoice."
  def billing_period(%__MODULE__{} = thing, value) do
    %{thing | billing_period: value}
  end

  @doc "Sets the Schema.org `broker` property.\n\nAn entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred."
  def broker(%__MODULE__{} = thing, value) do
    %{thing | broker: value}
  end

  @doc "Sets the Schema.org `category` property.\n\nA category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."
  def category(%__MODULE__{} = thing, value) do
    %{thing | category: value}
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

  @doc "Sets the Schema.org `minimumPaymentDue` property.\n\nThe minimum payment required at this time."
  def minimum_payment_due(%__MODULE__{} = thing, value) do
    %{thing | minimum_payment_due: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
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

  @doc "Sets the Schema.org `paymentStatus` property.\n\nThe status of payment; whether the invoice has been paid or not."
  def payment_status(%__MODULE__{} = thing, value) do
    %{thing | payment_status: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `referencesOrder` property.\n\nThe Order(s) related to this Invoice. One or more Orders may be combined into a single Invoice."
  def references_order(%__MODULE__{} = thing, value) do
    %{thing | references_order: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `scheduledPaymentDate` property.\n\nThe date the invoice is scheduled to be paid."
  def scheduled_payment_date(%__MODULE__{} = thing, value) do
    %{thing | scheduled_payment_date: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `totalPaymentDue` property.\n\nThe total amount due."
  def total_payment_due(%__MODULE__{} = thing, value) do
    %{thing | total_payment_due: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
