defmodule SchemaOrg.CreditCard do
  @moduledoc "A card payment method of a particular brand or name.  Used to mark up a particular payment method and/or the financial product/service that supplies the card account.\\n\\nCommonly used values:\\n\\n* http://purl.org/goodrelations/v1#AmericanExpress\\n* http://purl.org/goodrelations/v1#DinersClub\\n* http://purl.org/goodrelations/v1#Discover\\n* http://purl.org/goodrelations/v1#JCB\\n* http://purl.org/goodrelations/v1#MasterCard\\n* http://purl.org/goodrelations/v1#VISA\n       "

  defstruct [
    :additional_type,
    :aggregate_rating,
    :alternate_name,
    :amount,
    :annual_percentage_rate,
    :area_served,
    :audience,
    :available_channel,
    :award,
    :brand,
    :broker,
    :cash_back,
    :category,
    :contactless_payment,
    :currency,
    :description,
    :disambiguating_description,
    :fees_and_commissions_specification,
    :floor_limit,
    :grace_period,
    :has_certification,
    :has_offer_catalog,
    :hours_available,
    :identifier,
    :image,
    :interest_rate,
    :is_related_to,
    :is_similar_to,
    :loan_repayment_form,
    :loan_term,
    :loan_type,
    :logo,
    :main_entity_of_page,
    :monthly_minimum_repayment_amount,
    :name,
    :offers,
    :owner,
    :payment_method_type,
    :potential_action,
    :produces,
    :provider,
    :provider_mobility,
    :recourse_loan,
    :renegotiable_loan,
    :required_collateral,
    :review,
    :same_as,
    :service_area,
    :service_audience,
    :service_output,
    :service_type,
    :slogan,
    :subject_of,
    :terms_of_service,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    aggregate_rating: "aggregateRating",
    alternate_name: "alternateName",
    amount: "amount",
    annual_percentage_rate: "annualPercentageRate",
    area_served: "areaServed",
    audience: "audience",
    available_channel: "availableChannel",
    award: "award",
    brand: "brand",
    broker: "broker",
    cash_back: "cashBack",
    category: "category",
    contactless_payment: "contactlessPayment",
    currency: "currency",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    fees_and_commissions_specification: "feesAndCommissionsSpecification",
    floor_limit: "floorLimit",
    grace_period: "gracePeriod",
    has_certification: "hasCertification",
    has_offer_catalog: "hasOfferCatalog",
    hours_available: "hoursAvailable",
    identifier: "identifier",
    image: "image",
    interest_rate: "interestRate",
    is_related_to: "isRelatedTo",
    is_similar_to: "isSimilarTo",
    loan_repayment_form: "loanRepaymentForm",
    loan_term: "loanTerm",
    loan_type: "loanType",
    logo: "logo",
    main_entity_of_page: "mainEntityOfPage",
    monthly_minimum_repayment_amount: "monthlyMinimumRepaymentAmount",
    name: "name",
    offers: "offers",
    owner: "owner",
    payment_method_type: "paymentMethodType",
    potential_action: "potentialAction",
    produces: "produces",
    provider: "provider",
    provider_mobility: "providerMobility",
    recourse_loan: "recourseLoan",
    renegotiable_loan: "renegotiableLoan",
    required_collateral: "requiredCollateral",
    review: "review",
    same_as: "sameAs",
    service_area: "serviceArea",
    service_audience: "serviceAudience",
    service_output: "serviceOutput",
    service_type: "serviceType",
    slogan: "slogan",
    subject_of: "subjectOf",
    terms_of_service: "termsOfService",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "CreditCard", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.CreditCard` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `aggregateRating` property.\n\nThe overall rating, based on a collection of reviews or ratings, of the item."
  def aggregate_rating(%__MODULE__{} = thing, value) do
    %{thing | aggregate_rating: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `amount` property.\n\nThe amount of money."
  def amount(%__MODULE__{} = thing, value) do
    %{thing | amount: value}
  end

  @doc "Sets the Schema.org `annualPercentageRate` property.\n\nThe annual rate that is charged for borrowing (or made by investing), expressed as a single percentage number that represents the actual yearly cost of funds over the term of a loan. This includes any fees or additional costs associated with the transaction."
  def annual_percentage_rate(%__MODULE__{} = thing, value) do
    %{thing | annual_percentage_rate: value}
  end

  @doc "Sets the Schema.org `areaServed` property.\n\nThe geographic area where a service or offered item is provided."
  def area_served(%__MODULE__{} = thing, value) do
    %{thing | area_served: value}
  end

  @doc "Sets the Schema.org `audience` property.\n\nAn intended audience, i.e. a group for whom something was created."
  def audience(%__MODULE__{} = thing, value) do
    %{thing | audience: value}
  end

  @doc "Sets the Schema.org `availableChannel` property.\n\nA means of accessing the service (e.g. a phone bank, a web site, a location, etc.)."
  def available_channel(%__MODULE__{} = thing, value) do
    %{thing | available_channel: value}
  end

  @doc "Sets the Schema.org `award` property.\n\nAn award won by or for this item."
  def award(%__MODULE__{} = thing, value) do
    %{thing | award: value}
  end

  @doc "Sets the Schema.org `brand` property.\n\nThe brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person."
  def brand(%__MODULE__{} = thing, value) do
    %{thing | brand: value}
  end

  @doc "Sets the Schema.org `broker` property.\n\nAn entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred."
  def broker(%__MODULE__{} = thing, value) do
    %{thing | broker: value}
  end

  @doc "Sets the Schema.org `cashBack` property.\n\nA cardholder benefit that pays the cardholder a small percentage of their net expenditures."
  def cash_back(%__MODULE__{} = thing, value) do
    %{thing | cash_back: value}
  end

  @doc "Sets the Schema.org `category` property.\n\nA category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."
  def category(%__MODULE__{} = thing, value) do
    %{thing | category: value}
  end

  @doc "Sets the Schema.org `contactlessPayment` property.\n\nA secure method for consumers to purchase products or services via debit, credit or smartcards by using RFID or NFC technology."
  def contactless_payment(%__MODULE__{} = thing, value) do
    %{thing | contactless_payment: value}
  end

  @doc "Sets the Schema.org `currency` property.\n\nThe currency in which the monetary amount is expressed.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."
  def currency(%__MODULE__{} = thing, value) do
    %{thing | currency: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `feesAndCommissionsSpecification` property.\n\nDescription of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization."
  def fees_and_commissions_specification(%__MODULE__{} = thing, value) do
    %{thing | fees_and_commissions_specification: value}
  end

  @doc "Sets the Schema.org `floorLimit` property.\n\nA floor limit is the amount of money above which credit card transactions must be authorized."
  def floor_limit(%__MODULE__{} = thing, value) do
    %{thing | floor_limit: value}
  end

  @doc "Sets the Schema.org `gracePeriod` property.\n\nThe period of time after any due date that the borrower has to fulfil its obligations before a default (failure to pay) is deemed to have occurred."
  def grace_period(%__MODULE__{} = thing, value) do
    %{thing | grace_period: value}
  end

  @doc "Sets the Schema.org `hasCertification` property.\n\nCertification information about a product, organization, service, place, or person."
  def has_certification(%__MODULE__{} = thing, value) do
    %{thing | has_certification: value}
  end

  @doc "Sets the Schema.org `hasOfferCatalog` property.\n\nIndicates an OfferCatalog listing for this Organization, Person, or Service."
  def has_offer_catalog(%__MODULE__{} = thing, value) do
    %{thing | has_offer_catalog: value}
  end

  @doc "Sets the Schema.org `hoursAvailable` property.\n\nThe hours during which this service or contact is available."
  def hours_available(%__MODULE__{} = thing, value) do
    %{thing | hours_available: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `interestRate` property.\n\nThe interest rate, charged or paid, applicable to the financial product. Note: This is different from the calculated annualPercentageRate."
  def interest_rate(%__MODULE__{} = thing, value) do
    %{thing | interest_rate: value}
  end

  @doc "Sets the Schema.org `isRelatedTo` property.\n\nA pointer to another, somehow related product (or multiple products)."
  def is_related_to(%__MODULE__{} = thing, value) do
    %{thing | is_related_to: value}
  end

  @doc "Sets the Schema.org `isSimilarTo` property.\n\nA pointer to another, functionally similar product (or multiple products)."
  def is_similar_to(%__MODULE__{} = thing, value) do
    %{thing | is_similar_to: value}
  end

  @doc "Sets the Schema.org `loanRepaymentForm` property.\n\nA form of paying back money previously borrowed from a lender. Repayment usually takes the form of periodic payments that normally include part principal plus interest in each payment."
  def loan_repayment_form(%__MODULE__{} = thing, value) do
    %{thing | loan_repayment_form: value}
  end

  @doc "Sets the Schema.org `loanTerm` property.\n\nThe duration of the loan or credit agreement."
  def loan_term(%__MODULE__{} = thing, value) do
    %{thing | loan_term: value}
  end

  @doc "Sets the Schema.org `loanType` property.\n\nThe type of a loan or credit."
  def loan_type(%__MODULE__{} = thing, value) do
    %{thing | loan_type: value}
  end

  @doc "Sets the Schema.org `logo` property.\n\nAn associated logo."
  def logo(%__MODULE__{} = thing, value) do
    %{thing | logo: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `monthlyMinimumRepaymentAmount` property.\n\nThe minimum payment is the lowest amount of money that one is required to pay on a credit card statement each month."
  def monthly_minimum_repayment_amount(%__MODULE__{} = thing, value) do
    %{thing | monthly_minimum_repayment_amount: value}
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

  @doc "Sets the Schema.org `paymentMethodType` property.\n\nThe type of a payment method."
  def payment_method_type(%__MODULE__{} = thing, value) do
    %{thing | payment_method_type: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `produces` property.\n\nThe tangible thing generated by the service, e.g. a passport, permit, etc."
  def produces(%__MODULE__{} = thing, value) do
    %{thing | produces: value}
  end

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `providerMobility` property.\n\nIndicates the mobility of a provided service (e.g. 'static', 'dynamic')."
  def provider_mobility(%__MODULE__{} = thing, value) do
    %{thing | provider_mobility: value}
  end

  @doc "Sets the Schema.org `recourseLoan` property.\n\nThe only way you get the money back in the event of default is the security. Recourse is where you still have the opportunity to go back to the borrower for the rest of the money."
  def recourse_loan(%__MODULE__{} = thing, value) do
    %{thing | recourse_loan: value}
  end

  @doc "Sets the Schema.org `renegotiableLoan` property.\n\nWhether the terms for payment of interest can be renegotiated during the life of the loan."
  def renegotiable_loan(%__MODULE__{} = thing, value) do
    %{thing | renegotiable_loan: value}
  end

  @doc "Sets the Schema.org `requiredCollateral` property.\n\nAssets required to secure loan or credit repayments. It may take form of third party pledge, goods, financial instruments (cash, securities, etc.)"
  def required_collateral(%__MODULE__{} = thing, value) do
    %{thing | required_collateral: value}
  end

  @doc "Sets the Schema.org `review` property.\n\nA review of the item."
  def review(%__MODULE__{} = thing, value) do
    %{thing | review: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `serviceArea` property.\n\nThe geographic area where the service is provided."
  def service_area(%__MODULE__{} = thing, value) do
    %{thing | service_area: value}
  end

  @doc "Sets the Schema.org `serviceAudience` property.\n\nThe audience eligible for this service."
  def service_audience(%__MODULE__{} = thing, value) do
    %{thing | service_audience: value}
  end

  @doc "Sets the Schema.org `serviceOutput` property.\n\nThe tangible thing generated by the service, e.g. a passport, permit, etc."
  def service_output(%__MODULE__{} = thing, value) do
    %{thing | service_output: value}
  end

  @doc "Sets the Schema.org `serviceType` property.\n\nThe type of service being offered, e.g. veterans' benefits, emergency relief, etc."
  def service_type(%__MODULE__{} = thing, value) do
    %{thing | service_type: value}
  end

  @doc "Sets the Schema.org `slogan` property.\n\nA slogan or motto associated with the item."
  def slogan(%__MODULE__{} = thing, value) do
    %{thing | slogan: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `termsOfService` property.\n\nHuman-readable terms of service documentation."
  def terms_of_service(%__MODULE__{} = thing, value) do
    %{thing | terms_of_service: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
