defmodule SchemaOrg.DeliveryChargeSpecification do
  @moduledoc "The price for the delivery of an offer using a particular delivery method."

  defstruct [
    :additional_type,
    :alternate_name,
    :applies_to_delivery_method,
    :area_served,
    :description,
    :disambiguating_description,
    :eligible_quantity,
    :eligible_region,
    :eligible_transaction_volume,
    :identifier,
    :image,
    :ineligible_region,
    :main_entity_of_page,
    :max_price,
    :membership_points_earned,
    :min_price,
    :name,
    :owner,
    :potential_action,
    :price,
    :price_currency,
    :same_as,
    :subject_of,
    :url,
    :valid_for_member_tier,
    :valid_from,
    :valid_through,
    :value_added_tax_included
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    applies_to_delivery_method: "appliesToDeliveryMethod",
    area_served: "areaServed",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    eligible_quantity: "eligibleQuantity",
    eligible_region: "eligibleRegion",
    eligible_transaction_volume: "eligibleTransactionVolume",
    identifier: "identifier",
    image: "image",
    ineligible_region: "ineligibleRegion",
    main_entity_of_page: "mainEntityOfPage",
    max_price: "maxPrice",
    membership_points_earned: "membershipPointsEarned",
    min_price: "minPrice",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    price: "price",
    price_currency: "priceCurrency",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    valid_for_member_tier: "validForMemberTier",
    valid_from: "validFrom",
    valid_through: "validThrough",
    value_added_tax_included: "valueAddedTaxIncluded"
  }

  @doc false
  def __schema_org__, do: %{type: "DeliveryChargeSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DeliveryChargeSpecification` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `appliesToDeliveryMethod` property.\n\nThe delivery method(s) to which the delivery charge or payment charge specification applies."
  def applies_to_delivery_method(%__MODULE__{} = thing, value) do
    %{thing | applies_to_delivery_method: value}
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

  @doc "Sets the Schema.org `eligibleQuantity` property.\n\nThe interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity."
  def eligible_quantity(%__MODULE__{} = thing, value) do
    %{thing | eligible_quantity: value}
  end

  @doc "Sets the Schema.org `eligibleRegion` property.\n\nThe ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\\n\\nSee also [[ineligibleRegion]].\n    "
  def eligible_region(%__MODULE__{} = thing, value) do
    %{thing | eligible_region: value}
  end

  @doc "Sets the Schema.org `eligibleTransactionVolume` property.\n\nThe transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount."
  def eligible_transaction_volume(%__MODULE__{} = thing, value) do
    %{thing | eligible_transaction_volume: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `ineligibleRegion` property.\n\nThe ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\\n\\nSee also [[eligibleRegion]].\n      "
  def ineligible_region(%__MODULE__{} = thing, value) do
    %{thing | ineligible_region: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `maxPrice` property.\n\nThe highest price if the price is a range."
  def max_price(%__MODULE__{} = thing, value) do
    %{thing | max_price: value}
  end

  @doc "Sets the Schema.org `membershipPointsEarned` property.\n\nThe number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)"
  def membership_points_earned(%__MODULE__{} = thing, value) do
    %{thing | membership_points_earned: value}
  end

  @doc "Sets the Schema.org `minPrice` property.\n\nThe lowest price if the price is a range."
  def min_price(%__MODULE__{} = thing, value) do
    %{thing | min_price: value}
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

  @doc "Sets the Schema.org `price` property.\n\nThe offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.\\n\\nUsage guidelines:\\n\\n* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.\\n* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a \"content=\" attribute for publishing simple machine-readable values alongside more human-friendly formatting.\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n      "
  def price(%__MODULE__{} = thing, value) do
    %{thing | price: value}
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

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `validForMemberTier` property.\n\nThe membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for."
  def valid_for_member_tier(%__MODULE__{} = thing, value) do
    %{thing | valid_for_member_tier: value}
  end

  @doc "Sets the Schema.org `validFrom` property.\n\nThe date when the item becomes valid."
  def valid_from(%__MODULE__{} = thing, value) do
    %{thing | valid_from: value}
  end

  @doc "Sets the Schema.org `validThrough` property.\n\nThe date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours."
  def valid_through(%__MODULE__{} = thing, value) do
    %{thing | valid_through: value}
  end

  @doc "Sets the Schema.org `valueAddedTaxIncluded` property.\n\nSpecifies whether the applicable value-added tax (VAT) is included in the price specification or not."
  def value_added_tax_included(%__MODULE__{} = thing, value) do
    %{thing | value_added_tax_included: value}
  end
end
