defmodule SchemaOrg.Demand do
  @moduledoc "A demand entity represents the public, not necessarily binding, not necessarily exclusive, announcement by an organization or person to seek a certain type of goods or services. For describing demand using this type, the very same properties used for Offer apply."

  defstruct [
    :accepted_payment_method,
    :additional_type,
    :advance_booking_requirement,
    :alternate_name,
    :area_served,
    :asin,
    :availability,
    :availability_ends,
    :availability_starts,
    :available_at_or_from,
    :available_delivery_method,
    :business_function,
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
    :identifier,
    :image,
    :includes_object,
    :ineligible_region,
    :inventory_level,
    :item_condition,
    :item_offered,
    :main_entity_of_page,
    :mpn,
    :name,
    :owner,
    :potential_action,
    :price_specification,
    :same_as,
    :seller,
    :serial_number,
    :sku,
    :subject_of,
    :url,
    :valid_from,
    :valid_through,
    :warranty
  ]

  @json_keys %{
    accepted_payment_method: "acceptedPaymentMethod",
    additional_type: "additionalType",
    advance_booking_requirement: "advanceBookingRequirement",
    alternate_name: "alternateName",
    area_served: "areaServed",
    asin: "asin",
    availability: "availability",
    availability_ends: "availabilityEnds",
    availability_starts: "availabilityStarts",
    available_at_or_from: "availableAtOrFrom",
    available_delivery_method: "availableDeliveryMethod",
    business_function: "businessFunction",
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
    identifier: "identifier",
    image: "image",
    includes_object: "includesObject",
    ineligible_region: "ineligibleRegion",
    inventory_level: "inventoryLevel",
    item_condition: "itemCondition",
    item_offered: "itemOffered",
    main_entity_of_page: "mainEntityOfPage",
    mpn: "mpn",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    price_specification: "priceSpecification",
    same_as: "sameAs",
    seller: "seller",
    serial_number: "serialNumber",
    sku: "sku",
    subject_of: "subjectOf",
    url: "url",
    valid_from: "validFrom",
    valid_through: "validThrough",
    warranty: "warranty"
  }

  @doc false
  def __schema_org__, do: %{type: "Demand", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Demand` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `acceptedPaymentMethod` property.\n\nThe payment method(s) that are accepted in general by an organization, or for some specific demand or offer."
  def accepted_payment_method(%__MODULE__{} = thing, value) do
    %{thing | accepted_payment_method: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `advanceBookingRequirement` property.\n\nThe amount of time that is required between accepting the offer and the actual usage of the resource or service."
  def advance_booking_requirement(%__MODULE__{} = thing, value) do
    %{thing | advance_booking_requirement: value}
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

  @doc "Sets the Schema.org `itemCondition` property.\n\nA predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns."
  def item_condition(%__MODULE__{} = thing, value) do
    %{thing | item_condition: value}
  end

  @doc "Sets the Schema.org `itemOffered` property.\n\nAn item being offered (or demanded). The transactional nature of the offer or demand is documented using [[businessFunction]], e.g. sell, lease etc. While several common expected types are listed explicitly in this definition, others can be used. Using a second type, such as Product or a subtype of Product, can clarify the nature of the offer."
  def item_offered(%__MODULE__{} = thing, value) do
    %{thing | item_offered: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `mpn` property.\n\nThe Manufacturer Part Number (MPN) of the product, or the product to which the offer refers."
  def mpn(%__MODULE__{} = thing, value) do
    %{thing | mpn: value}
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

  @doc "Sets the Schema.org `priceSpecification` property.\n\nOne or more detailed price specifications, indicating the unit price and delivery or payment charges."
  def price_specification(%__MODULE__{} = thing, value) do
    %{thing | price_specification: value}
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
