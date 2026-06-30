defmodule SchemaOrg.FinancialIncentive do
  @moduledoc "<p>Represents financial incentives for goods/services offered by an organization (or individual).</p>\n\n<p>Typically contains the [[name]] of the incentive, the [[incentivizedItem]], the [[incentiveAmount]], the [[incentiveStatus]], [[incentiveType]], the [[provider]] of the incentive, and [[eligibleWithSupplier]].</p>\n\n<p>Optionally contains criteria on whether the incentive is limited based on [[purchaseType]], [[purchasePriceLimit]], [[incomeLimit]], and the [[qualifiedExpense]].\n    "

  defstruct [
    :additional_type,
    :alternate_name,
    :area_served,
    :description,
    :disambiguating_description,
    :eligible_with_supplier,
    :identifier,
    :image,
    :incentive_amount,
    :incentive_status,
    :incentive_type,
    :incentivized_item,
    :income_limit,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :provider,
    :publisher,
    :purchase_price_limit,
    :purchase_type,
    :qualified_expense,
    :same_as,
    :subject_of,
    :url,
    :valid_from,
    :valid_through
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    area_served: "areaServed",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    eligible_with_supplier: "eligibleWithSupplier",
    identifier: "identifier",
    image: "image",
    incentive_amount: "incentiveAmount",
    incentive_status: "incentiveStatus",
    incentive_type: "incentiveType",
    incentivized_item: "incentivizedItem",
    income_limit: "incomeLimit",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    provider: "provider",
    publisher: "publisher",
    purchase_price_limit: "purchasePriceLimit",
    purchase_type: "purchaseType",
    qualified_expense: "qualifiedExpense",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    valid_from: "validFrom",
    valid_through: "validThrough"
  }

  @doc false
  def __schema_org__, do: %{type: "FinancialIncentive", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.FinancialIncentive` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `areaServed` property.\n\nThe geographic area where a service or offered item is provided."
  def area_served(%__MODULE__{} = thing, value) do
    %{thing | area_served: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `eligibleWithSupplier` property.\n\nThe supplier of the incentivized item/service for which the incentive is valid for such as a utility company, merchant, or contractor."
  def eligible_with_supplier(%__MODULE__{} = thing, value) do
    %{thing | eligible_with_supplier: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `incentiveAmount` property.\n\nDescribes the amount that can be redeemed from this incentive.\n    \n<p>[[QuantitativeValue]]: Use this for incentives based on price (either raw amount or percentage-based). For a raw amount example, \"You can claim $2,500 - $7,500 from the total cost of installation\" would be represented as the following:</p>\n    {\n        \"@type\": \"QuantitativeValue\",\n        “minValue”: 2500,\n        “maxValue”: 7500,\n        \"unitCode\": \"USD\"\n    }\n<p>[[QuantitativeValue]] can also be used for percentage amounts. In such cases, value is used to represent the incentive’s percentage, while maxValue represents a limit (if one exists) to that incentive. The unitCode should be 'P1' and the unitText should be '%', while valueReference should be used for holding the currency type. For example, \"You can claim up to 30% of the total cost of installation, up to a maximum of $7,500\" would be:</p>\n    {\n        \"@type\": \"QuantitativeValue\",\n        \"value\": 30,\n        \"unitCode\": \"P1\",\n        \"unitText\": \"%\",\n        “maxValue”: 7500,\n        “valueReference”: “USD”\n    }\n<p>[[UnitPriceSpecification]]: Use this for incentives that are based on amounts rather than price. For example, a net metering rebate that pays $10/kWh, up to $1,000:</p>\n    {\n        \"@type\": \"UnitPriceSpecification\",\n        \"price\": 10,\n        \"priceCurrency\": \"USD\",\n        \"referenceQuantity\": 1,\n        \"unitCode\": \"DO3\",\n        \"unitText\": \"kw/h\",\n        \"maxPrice\": 1000,\n        \"description\": \"$10 / kwh up to $1000\"\n    }\n<p>[[LoanOrCredit]]: Use for incentives that are loan based. For example, a loan of $4,000 - $50,000 with a repayment term of 10 years, interest free would look like:</p>\n    {\n        \"@type\": \"LoanOrCredit\",\n        \"loanTerm\": {\n                \"@type\":\"QuantitativeValue\",\n                \"value\":\"10\",\n                \"unitCode\": \"ANN\"\n            },\n        \"amount\":[\n            {\n                \"@type\": \"QuantitativeValue\",\n                \"Name\":\"fixed interest rate\",\n                \"value\":\"0\",\n            },\n        ],\n        \"amount\":[\n            {\n                \"@type\": \"MonetaryAmount\",\n                \"Name\":\"min loan amount\",\n                \"value\":\"4000\",\n                \"currency\":\"CAD\"\n            },\n            {\n                \"@type\": \"MonetaryAmount\",\n                \"Name\":\"max loan amount\",\n                \"value\":\"50000\",\n                \"currency\":\"CAD\"\n            }\n        ],\n    }\n\nIn summary: <ul><li>Use [[QuantitativeValue]] for absolute/percentage-based incentives applied on the price of a good/service.</li>\n<li>Use [[UnitPriceSpecification]] for incentives based on a per-unit basis (e.g. net metering).</li>\n<li>Use [[LoanOrCredit]] for loans/credits.</li>\n</ul>."
  def incentive_amount(%__MODULE__{} = thing, value) do
    %{thing | incentive_amount: value}
  end

  @doc "Sets the Schema.org `incentiveStatus` property.\n\nThe status of the incentive (active, on hold, retired, etc.)."
  def incentive_status(%__MODULE__{} = thing, value) do
    %{thing | incentive_status: value}
  end

  @doc "Sets the Schema.org `incentiveType` property.\n\nThe type of incentive offered (tax credit/rebate, tax deduction, tax waiver, subsidies, etc.)."
  def incentive_type(%__MODULE__{} = thing, value) do
    %{thing | incentive_type: value}
  end

  @doc "Sets the Schema.org `incentivizedItem` property.\n\nThe type or specific product(s) and/or service(s) being incentivized.\n<p>DefinedTermSets are used for product and service categories such as the United Nations Standard Products and Services Code:</p>\n    {\n        \"@type\": \"DefinedTerm\",\n        \"inDefinedTermSet\": \"https://www.unspsc.org/\",\n        \"termCode\": \"261315XX\",\n        \"name\": \"Photovoltaic module\"\n    }\n\n<p>For a specific product or service, use the Product type:</p>\n    {\n        \"@type\": \"Product\",\n        \"name\": \"Kenmore White 17\" Microwave\",\n    }\nFor multiple different incentivized items, use multiple [[DefinedTerm]] or [[Product]]."
  def incentivized_item(%__MODULE__{} = thing, value) do
    %{thing | incentivized_item: value}
  end

  @doc "Sets the Schema.org `incomeLimit` property.\n\nOptional. Income limit for which the incentive is applicable for.\n    \n<p>If MonetaryAmount is specified, this should be based on annualized income (e.g. if an incentive is limited to those making <$114,000 annually):</p>\n    {\n        \"@type\": \"MonetaryAmount\",\n        \"maxValue\": 114000,\n        \"currency\": \"USD\",\n    }\n\nUse Text for incentives that are limited based on other criteria, for example if an incentive is only available to recipients making 120% of the median poverty income in their area."
  def income_limit(%__MODULE__{} = thing, value) do
    %{thing | income_limit: value}
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

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `publisher` property.\n\nThe publisher of the article in question."
  def publisher(%__MODULE__{} = thing, value) do
    %{thing | publisher: value}
  end

  @doc "Sets the Schema.org `purchasePriceLimit` property.\n\nOptional. The maximum price the item can have and still qualify for this offer."
  def purchase_price_limit(%__MODULE__{} = thing, value) do
    %{thing | purchase_price_limit: value}
  end

  @doc "Sets the Schema.org `purchaseType` property.\n\nOptional. The type of purchase the consumer must make in order to qualify for this incentive."
  def purchase_type(%__MODULE__{} = thing, value) do
    %{thing | purchase_type: value}
  end

  @doc "Sets the Schema.org `qualifiedExpense` property.\n\nOptional. The types of expenses that are covered by the incentive. For example some incentives are only for the goods (tangible items) but the services (labor) are excluded."
  def qualified_expense(%__MODULE__{} = thing, value) do
    %{thing | qualified_expense: value}
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
