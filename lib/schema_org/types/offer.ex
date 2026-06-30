defmodule SchemaOrg.Offer do
  @moduledoc "An offer to transfer some rights to an item or to provide a service — for example, an offer to sell tickets to an event, to rent the DVD of a movie, to stream a TV show over the internet, to repair a motorcycle, or to loan a book.\\n\\nNote: As the [[businessFunction]] property, which identifies the form of offer (e.g. sell, lease, repair, dispose), defaults to http://purl.org/goodrelations/v1#Sell; an Offer without a defined businessFunction value can be assumed to be an offer to sell.\\n\\nFor [GTIN](http://www.gs1.org/barcodes/technical/idkeys/gtin)-related fields, see [Check Digit calculator](http://www.gs1.org/barcodes/support/check_digit_calculator) and [validation guide](http://www.gs1us.org/resources/standards/gtin-validation-guide) from [GS1](http://www.gs1.org/)."

  defstruct [
    :accepted_payment_method,
    :add_on,
    :additional_property,
    :additional_type,
    :advance_booking_requirement,
    :aggregate_rating,
    :alternate_name,
    :area_served,
    :asin,
    :availability,
    :availability_ends,
    :availability_starts,
    :available_at_or_from,
    :available_delivery_method,
    :business_function,
    :category,
    :checkout_page_url_template,
    :delivery_lead_time,
    :description,
    :disambiguating_description,
    :eligible_customer_type,
    :eligible_duration,
    :eligible_quantity,
    :eligible_region,
    :eligible_transaction_volume,
    :gtin,
    :gtin12,
    :gtin13,
    :gtin14,
    :gtin8,
    :has_adult_consideration,
    :has_gs1_digital_link,
    :has_measurement,
    :has_merchant_return_policy,
    :identifier,
    :image,
    :includes_object,
    :ineligible_region,
    :inventory_level,
    :is_family_friendly,
    :item_condition,
    :item_offered,
    :lease_length,
    :main_entity_of_page,
    :mobile_url,
    :mpn,
    :name,
    :offered_by,
    :owner,
    :potential_action,
    :price,
    :price_currency,
    :price_specification,
    :price_valid_until,
    :review,
    :reviews,
    :same_as,
    :seller,
    :serial_number,
    :shipping_details,
    :sku,
    :subject_of,
    :url,
    :valid_for_member_tier,
    :valid_from,
    :valid_through,
    :warranty
  ]

  @json_keys %{
    accepted_payment_method: "acceptedPaymentMethod",
    add_on: "addOn",
    additional_property: "additionalProperty",
    additional_type: "additionalType",
    advance_booking_requirement: "advanceBookingRequirement",
    aggregate_rating: "aggregateRating",
    alternate_name: "alternateName",
    area_served: "areaServed",
    asin: "asin",
    availability: "availability",
    availability_ends: "availabilityEnds",
    availability_starts: "availabilityStarts",
    available_at_or_from: "availableAtOrFrom",
    available_delivery_method: "availableDeliveryMethod",
    business_function: "businessFunction",
    category: "category",
    checkout_page_url_template: "checkoutPageURLTemplate",
    delivery_lead_time: "deliveryLeadTime",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    eligible_customer_type: "eligibleCustomerType",
    eligible_duration: "eligibleDuration",
    eligible_quantity: "eligibleQuantity",
    eligible_region: "eligibleRegion",
    eligible_transaction_volume: "eligibleTransactionVolume",
    gtin: "gtin",
    gtin12: "gtin12",
    gtin13: "gtin13",
    gtin14: "gtin14",
    gtin8: "gtin8",
    has_adult_consideration: "hasAdultConsideration",
    has_gs1_digital_link: "hasGS1DigitalLink",
    has_measurement: "hasMeasurement",
    has_merchant_return_policy: "hasMerchantReturnPolicy",
    identifier: "identifier",
    image: "image",
    includes_object: "includesObject",
    ineligible_region: "ineligibleRegion",
    inventory_level: "inventoryLevel",
    is_family_friendly: "isFamilyFriendly",
    item_condition: "itemCondition",
    item_offered: "itemOffered",
    lease_length: "leaseLength",
    main_entity_of_page: "mainEntityOfPage",
    mobile_url: "mobileUrl",
    mpn: "mpn",
    name: "name",
    offered_by: "offeredBy",
    owner: "owner",
    potential_action: "potentialAction",
    price: "price",
    price_currency: "priceCurrency",
    price_specification: "priceSpecification",
    price_valid_until: "priceValidUntil",
    review: "review",
    reviews: "reviews",
    same_as: "sameAs",
    seller: "seller",
    serial_number: "serialNumber",
    shipping_details: "shippingDetails",
    sku: "sku",
    subject_of: "subjectOf",
    url: "url",
    valid_for_member_tier: "validForMemberTier",
    valid_from: "validFrom",
    valid_through: "validThrough",
    warranty: "warranty"
  }

  @doc false
  def __schema_org__, do: %{type: "Offer", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Offer` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `acceptedPaymentMethod` property.\n\nThe payment method(s) that are accepted in general by an organization, or for some specific demand or offer."
  def accepted_payment_method(%__MODULE__{} = thing, value) do
    %{thing | accepted_payment_method: value}
  end

  @doc "Sets the Schema.org `addOn` property.\n\nAn additional offer that can only be obtained in combination with the first base offer (e.g. supplements and extensions that are available for a surcharge)."
  def add_on(%__MODULE__{} = thing, value) do
    %{thing | add_on: value}
  end

  @doc "Sets the Schema.org `additionalProperty` property.\n\nA property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.\n"
  def additional_property(%__MODULE__{} = thing, value) do
    %{thing | additional_property: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `advanceBookingRequirement` property.\n\nThe amount of time that is required between accepting the offer and the actual usage of the resource or service."
  def advance_booking_requirement(%__MODULE__{} = thing, value) do
    %{thing | advance_booking_requirement: value}
  end

  @doc "Sets the Schema.org `aggregateRating` property.\n\nThe overall rating, based on a collection of reviews or ratings, of the item."
  def aggregate_rating(%__MODULE__{} = thing, value) do
    %{thing | aggregate_rating: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `areaServed` property.\n\nThe geographic area where a service or offered item is provided."
  def area_served(%__MODULE__{} = thing, value) do
    %{thing | area_served: value}
  end

  @doc "Sets the Schema.org `asin` property.\n\nAn Amazon Standard Identification Number (ASIN) is a 10-character alphanumeric unique identifier assigned by Amazon.com and its partners for product identification within the Amazon organization (summary from [Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s article).\n\nNote also that this is a definition for how to include ASINs in Schema.org data, and not a definition of ASINs in general - see documentation from Amazon for authoritative details.\nASINs are most commonly encoded as text strings, but the [asin] property supports URL/URI as potential values too."
  def asin(%__MODULE__{} = thing, value) do
    %{thing | asin: value}
  end

  @doc "Sets the Schema.org `availability` property.\n\nThe availability of this item&#x2014;for example In stock, Out of stock, Pre-order, etc."
  def availability(%__MODULE__{} = thing, value) do
    %{thing | availability: value}
  end

  @doc "Sets the Schema.org `availabilityEnds` property.\n\nThe end of the availability of the product or service included in the offer."
  def availability_ends(%__MODULE__{} = thing, value) do
    %{thing | availability_ends: value}
  end

  @doc "Sets the Schema.org `availabilityStarts` property.\n\nThe beginning of the availability of the product or service included in the offer."
  def availability_starts(%__MODULE__{} = thing, value) do
    %{thing | availability_starts: value}
  end

  @doc "Sets the Schema.org `availableAtOrFrom` property.\n\nThe place(s) from which the offer can be obtained (e.g. store locations)."
  def available_at_or_from(%__MODULE__{} = thing, value) do
    %{thing | available_at_or_from: value}
  end

  @doc "Sets the Schema.org `availableDeliveryMethod` property.\n\nThe delivery method(s) available for this offer."
  def available_delivery_method(%__MODULE__{} = thing, value) do
    %{thing | available_delivery_method: value}
  end

  @doc "Sets the Schema.org `businessFunction` property.\n\nThe business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell."
  def business_function(%__MODULE__{} = thing, value) do
    %{thing | business_function: value}
  end

  @doc "Sets the Schema.org `category` property.\n\nA category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."
  def category(%__MODULE__{} = thing, value) do
    %{thing | category: value}
  end

  @doc "Sets the Schema.org `checkoutPageURLTemplate` property.\n\nA URL template (RFC 6570) for a checkout page for an offer. This approach allows merchants to specify a URL for online checkout of the offered product, by interpolating parameters such as the logged in user ID, product ID, quantity, discount code etc. Parameter naming and standardization are not specified here."
  def checkout_page_url_template(%__MODULE__{} = thing, value) do
    %{thing | checkout_page_url_template: value}
  end

  @doc "Sets the Schema.org `deliveryLeadTime` property.\n\nThe typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup."
  def delivery_lead_time(%__MODULE__{} = thing, value) do
    %{thing | delivery_lead_time: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `eligibleCustomerType` property.\n\nThe type(s) of customers for which the given offer is valid."
  def eligible_customer_type(%__MODULE__{} = thing, value) do
    %{thing | eligible_customer_type: value}
  end

  @doc "Sets the Schema.org `eligibleDuration` property.\n\nThe duration for which the given offer is valid."
  def eligible_duration(%__MODULE__{} = thing, value) do
    %{thing | eligible_duration: value}
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

  @doc "Sets the Schema.org `gtin` property.\n\nA Global Trade Item Number ([GTIN](https://www.gs1.org/standards/id-keys/gtin)). GTINs identify trade items, including products and services, using numeric identification codes.\n\nA correct [[gtin]] value should be a valid GTIN, which means that it should be an all-numeric string of either 8, 12, 13 or 14 digits, or a \"GS1 Digital Link\" URL based on such a string. The numeric component should also have a [valid GS1 check digit](https://www.gs1.org/services/check-digit-calculator) and meet the other rules for valid GTINs. See also [GS1's GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) and [Wikipedia](https://en.wikipedia.org/wiki/Global_Trade_Item_Number) for more details. Left-padding of the gtin values is not required or encouraged. The [[gtin]] property generalizes the earlier [[gtin8]], [[gtin12]], [[gtin13]], and [[gtin14]] properties.\n\nThe GS1 [digital link specifications](https://www.gs1.org/standards/Digital-Link/) expresses GTINs as URLs (URIs, IRIs, etc.).\nDigital Links should be populated into the [[hasGS1DigitalLink]] attribute.\n\nNote also that this is a definition for how to include GTINs in Schema.org data, and not a definition of GTINs in general - see the GS1 documentation for authoritative details."
  def gtin(%__MODULE__{} = thing, value) do
    %{thing | gtin: value}
  end

  @doc "Sets the Schema.org `gtin12` property.\n\nThe GTIN-12 code of the product, or the product to which the offer refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix, Item Reference, and Check Digit used to identify trade items. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."
  def gtin12(%__MODULE__{} = thing, value) do
    %{thing | gtin12: value}
  end

  @doc "Sets the Schema.org `gtin13` property.\n\nThe GTIN-13 code of the product, or the product to which the offer refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes can be converted into a GTIN-13 code by simply adding a preceding zero. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."
  def gtin13(%__MODULE__{} = thing, value) do
    %{thing | gtin13: value}
  end

  @doc "Sets the Schema.org `gtin14` property.\n\nThe GTIN-14 code of the product, or the product to which the offer refers. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."
  def gtin14(%__MODULE__{} = thing, value) do
    %{thing | gtin14: value}
  end

  @doc "Sets the Schema.org `gtin8` property.\n\nThe GTIN-8 code of the product, or the product to which the offer refers. This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."
  def gtin8(%__MODULE__{} = thing, value) do
    %{thing | gtin8: value}
  end

  @doc "Sets the Schema.org `hasAdultConsideration` property.\n\nUsed to tag an item to be intended or suitable for consumption or use by adults only."
  def has_adult_consideration(%__MODULE__{} = thing, value) do
    %{thing | has_adult_consideration: value}
  end

  @doc "Sets the Schema.org `hasGS1DigitalLink` property.\n\nThe <a href=\"https://www.gs1.org/standards/gs1-digital-link\">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly."
  def has_gs1_digital_link(%__MODULE__{} = thing, value) do
    %{thing | has_gs1_digital_link: value}
  end

  @doc "Sets the Schema.org `hasMeasurement` property.\n\nA measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings."
  def has_measurement(%__MODULE__{} = thing, value) do
    %{thing | has_measurement: value}
  end

  @doc "Sets the Schema.org `hasMerchantReturnPolicy` property.\n\nSpecifies a MerchantReturnPolicy that may be applicable."
  def has_merchant_return_policy(%__MODULE__{} = thing, value) do
    %{thing | has_merchant_return_policy: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `includesObject` property.\n\nThis links to a node or nodes indicating the exact quantity of the products included in  an [[Offer]] or [[ProductCollection]]."
  def includes_object(%__MODULE__{} = thing, value) do
    %{thing | includes_object: value}
  end

  @doc "Sets the Schema.org `ineligibleRegion` property.\n\nThe ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\\n\\nSee also [[eligibleRegion]].\n      "
  def ineligible_region(%__MODULE__{} = thing, value) do
    %{thing | ineligible_region: value}
  end

  @doc "Sets the Schema.org `inventoryLevel` property.\n\nThe current approximate inventory level for the item or items."
  def inventory_level(%__MODULE__{} = thing, value) do
    %{thing | inventory_level: value}
  end

  @doc "Sets the Schema.org `isFamilyFriendly` property.\n\nIndicates whether this content is family friendly."
  def is_family_friendly(%__MODULE__{} = thing, value) do
    %{thing | is_family_friendly: value}
  end

  @doc "Sets the Schema.org `itemCondition` property.\n\nA predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns."
  def item_condition(%__MODULE__{} = thing, value) do
    %{thing | item_condition: value}
  end

  @doc "Sets the Schema.org `itemOffered` property.\n\nAn item being offered (or demanded). The transactional nature of the offer or demand is documented using [[businessFunction]], e.g. sell, lease etc. While several common expected types are listed explicitly in this definition, others can be used. Using a second type, such as Product or a subtype of Product, can clarify the nature of the offer."
  def item_offered(%__MODULE__{} = thing, value) do
    %{thing | item_offered: value}
  end

  @doc "Sets the Schema.org `leaseLength` property.\n\nLength of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property."
  def lease_length(%__MODULE__{} = thing, value) do
    %{thing | lease_length: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `mobileUrl` property.\n\nThe [[mobileUrl]] property is provided for specific situations in which data consumers need to determine whether one of several provided URLs is a dedicated 'mobile site'.\n\nTo discourage over-use, and reflecting intial usecases, the property is expected only on [[Product]] and [[Offer]], rather than [[Thing]]. The general trend in web technology is towards [responsive design](https://en.wikipedia.org/wiki/Responsive_web_design) in which content can be flexibly adapted to a wide range of browsing environments. Pages and sites referenced with the long-established [[url]] property should ideally also be usable on a wide variety of devices, including mobile phones. In most cases, it would be pointless and counter productive to attempt to update all [[url]] markup to use [[mobileUrl]] for more mobile-oriented pages. The property is intended for the case when items (primarily [[Product]] and [[Offer]]) have extra URLs hosted on an additional \"mobile site\" alongside the main one. It should not be taken as an endorsement of this publication style.\n    "
  def mobile_url(%__MODULE__{} = thing, value) do
    %{thing | mobile_url: value}
  end

  @doc "Sets the Schema.org `mpn` property.\n\nThe Manufacturer Part Number (MPN) of the product, or the product to which the offer refers."
  def mpn(%__MODULE__{} = thing, value) do
    %{thing | mpn: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `offeredBy` property.\n\nA pointer to the organization or person making the offer."
  def offered_by(%__MODULE__{} = thing, value) do
    %{thing | offered_by: value}
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

  @doc "Sets the Schema.org `priceSpecification` property.\n\nOne or more detailed price specifications, indicating the unit price and delivery or payment charges."
  def price_specification(%__MODULE__{} = thing, value) do
    %{thing | price_specification: value}
  end

  @doc "Sets the Schema.org `priceValidUntil` property.\n\nThe date after which the price is no longer available."
  def price_valid_until(%__MODULE__{} = thing, value) do
    %{thing | price_valid_until: value}
  end

  @doc "Sets the Schema.org `review` property.\n\nA review of the item."
  def review(%__MODULE__{} = thing, value) do
    %{thing | review: value}
  end

  @doc "Sets the Schema.org `reviews` property.\n\nReview of the item."
  def reviews(%__MODULE__{} = thing, value) do
    %{thing | reviews: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `seller` property.\n\nAn entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider."
  def seller(%__MODULE__{} = thing, value) do
    %{thing | seller: value}
  end

  @doc "Sets the Schema.org `serialNumber` property.\n\nThe serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer."
  def serial_number(%__MODULE__{} = thing, value) do
    %{thing | serial_number: value}
  end

  @doc "Sets the Schema.org `shippingDetails` property.\n\nIndicates information about the shipping policies and options associated with an [[Offer]]."
  def shipping_details(%__MODULE__{} = thing, value) do
    %{thing | shipping_details: value}
  end

  @doc "Sets the Schema.org `sku` property.\n\nThe Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers."
  def sku(%__MODULE__{} = thing, value) do
    %{thing | sku: value}
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

  @doc "Sets the Schema.org `warranty` property.\n\nThe warranty promise(s) included in the offer."
  def warranty(%__MODULE__{} = thing, value) do
    %{thing | warranty: value}
  end
end
