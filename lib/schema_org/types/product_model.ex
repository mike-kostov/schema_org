defmodule SchemaOrg.ProductModel do
  @moduledoc "A datasheet or vendor specification of a product (in the sense of a prototypical description)."

  defstruct [
    :additional_property,
    :additional_type,
    :aggregate_rating,
    :alternate_name,
    :asin,
    :audience,
    :award,
    :awards,
    :brand,
    :category,
    :color,
    :color_swatch,
    :country_of_assembly,
    :country_of_last_processing,
    :country_of_origin,
    :depth,
    :description,
    :disambiguating_description,
    :display_location,
    :funding,
    :gtin,
    :gtin12,
    :gtin13,
    :gtin14,
    :gtin8,
    :has_adult_consideration,
    :has_certification,
    :has_energy_consumption_details,
    :has_gs1_digital_link,
    :has_measurement,
    :has_merchant_return_policy,
    :height,
    :identifier,
    :image,
    :in_product_group_with_id,
    :is_accessory_or_spare_part_for,
    :is_consumable_for,
    :is_family_friendly,
    :is_related_to,
    :is_similar_to,
    :is_variant_of,
    :item_condition,
    :keywords,
    :logo,
    :main_entity_of_page,
    :manufacturer,
    :material,
    :mobile_url,
    :model,
    :mpn,
    :name,
    :negative_notes,
    :nsn,
    :offers,
    :owner,
    :pattern,
    :positive_notes,
    :potential_action,
    :predecessor_of,
    :product_id,
    :production_date,
    :purchase_date,
    :release_date,
    :review,
    :reviews,
    :same_as,
    :size,
    :sku,
    :slogan,
    :subject_of,
    :successor_of,
    :url,
    :weight,
    :width
  ]

  @json_keys %{
    additional_property: "additionalProperty",
    additional_type: "additionalType",
    aggregate_rating: "aggregateRating",
    alternate_name: "alternateName",
    asin: "asin",
    audience: "audience",
    award: "award",
    awards: "awards",
    brand: "brand",
    category: "category",
    color: "color",
    color_swatch: "colorSwatch",
    country_of_assembly: "countryOfAssembly",
    country_of_last_processing: "countryOfLastProcessing",
    country_of_origin: "countryOfOrigin",
    depth: "depth",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    display_location: "displayLocation",
    funding: "funding",
    gtin: "gtin",
    gtin12: "gtin12",
    gtin13: "gtin13",
    gtin14: "gtin14",
    gtin8: "gtin8",
    has_adult_consideration: "hasAdultConsideration",
    has_certification: "hasCertification",
    has_energy_consumption_details: "hasEnergyConsumptionDetails",
    has_gs1_digital_link: "hasGS1DigitalLink",
    has_measurement: "hasMeasurement",
    has_merchant_return_policy: "hasMerchantReturnPolicy",
    height: "height",
    identifier: "identifier",
    image: "image",
    in_product_group_with_id: "inProductGroupWithID",
    is_accessory_or_spare_part_for: "isAccessoryOrSparePartFor",
    is_consumable_for: "isConsumableFor",
    is_family_friendly: "isFamilyFriendly",
    is_related_to: "isRelatedTo",
    is_similar_to: "isSimilarTo",
    is_variant_of: "isVariantOf",
    item_condition: "itemCondition",
    keywords: "keywords",
    logo: "logo",
    main_entity_of_page: "mainEntityOfPage",
    manufacturer: "manufacturer",
    material: "material",
    mobile_url: "mobileUrl",
    model: "model",
    mpn: "mpn",
    name: "name",
    negative_notes: "negativeNotes",
    nsn: "nsn",
    offers: "offers",
    owner: "owner",
    pattern: "pattern",
    positive_notes: "positiveNotes",
    potential_action: "potentialAction",
    predecessor_of: "predecessorOf",
    product_id: "productID",
    production_date: "productionDate",
    purchase_date: "purchaseDate",
    release_date: "releaseDate",
    review: "review",
    reviews: "reviews",
    same_as: "sameAs",
    size: "size",
    sku: "sku",
    slogan: "slogan",
    subject_of: "subjectOf",
    successor_of: "successorOf",
    url: "url",
    weight: "weight",
    width: "width"
  }

  @doc false
  def __schema_org__, do: %{type: "ProductModel", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ProductModel` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalProperty` property.\n\nA property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.\n"
  def additional_property(%__MODULE__{} = thing, value) do
    %{thing | additional_property: value}
  end

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

  @doc "Sets the Schema.org `asin` property.\n\nAn Amazon Standard Identification Number (ASIN) is a 10-character alphanumeric unique identifier assigned by Amazon.com and its partners for product identification within the Amazon organization (summary from [Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s article).\n\nNote also that this is a definition for how to include ASINs in Schema.org data, and not a definition of ASINs in general - see documentation from Amazon for authoritative details.\nASINs are most commonly encoded as text strings, but the [asin] property supports URL/URI as potential values too."
  def asin(%__MODULE__{} = thing, value) do
    %{thing | asin: value}
  end

  @doc "Sets the Schema.org `audience` property.\n\nAn intended audience, i.e. a group for whom something was created."
  def audience(%__MODULE__{} = thing, value) do
    %{thing | audience: value}
  end

  @doc "Sets the Schema.org `award` property.\n\nAn award won by or for this item."
  def award(%__MODULE__{} = thing, value) do
    %{thing | award: value}
  end

  @doc "Sets the Schema.org `awards` property.\n\nAwards won by or for this item."
  def awards(%__MODULE__{} = thing, value) do
    %{thing | awards: value}
  end

  @doc "Sets the Schema.org `brand` property.\n\nThe brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person."
  def brand(%__MODULE__{} = thing, value) do
    %{thing | brand: value}
  end

  @doc "Sets the Schema.org `category` property.\n\nA category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."
  def category(%__MODULE__{} = thing, value) do
    %{thing | category: value}
  end

  @doc "Sets the Schema.org `color` property.\n\nThe color of the product."
  def color(%__MODULE__{} = thing, value) do
    %{thing | color: value}
  end

  @doc "Sets the Schema.org `colorSwatch` property.\n\nA color swatch image, visualizing the color of a [[Product]]. Should match the textual description specified in the [[color]] property. This can be a URL or a fully described ImageObject."
  def color_swatch(%__MODULE__{} = thing, value) do
    %{thing | color_swatch: value}
  end

  @doc "Sets the Schema.org `countryOfAssembly` property.\n\nThe place where the product was assembled."
  def country_of_assembly(%__MODULE__{} = thing, value) do
    %{thing | country_of_assembly: value}
  end

  @doc "Sets the Schema.org `countryOfLastProcessing` property.\n\nThe place where the item (typically [[Product]]) was last processed and tested before importation."
  def country_of_last_processing(%__MODULE__{} = thing, value) do
    %{thing | country_of_last_processing: value}
  end

  @doc "Sets the Schema.org `countryOfOrigin` property.\n\nThe country of origin of something, including products as well as creative  works such as movie and TV content.\n\nIn the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.\n\nIn the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here."
  def country_of_origin(%__MODULE__{} = thing, value) do
    %{thing | country_of_origin: value}
  end

  @doc "Sets the Schema.org `depth` property.\n\nThe depth of the item."
  def depth(%__MODULE__{} = thing, value) do
    %{thing | depth: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `displayLocation` property.\n\nThe location at which an item can be viewed or experienced in-person."
  def display_location(%__MODULE__{} = thing, value) do
    %{thing | display_location: value}
  end

  @doc "Sets the Schema.org `funding` property.\n\nA [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."
  def funding(%__MODULE__{} = thing, value) do
    %{thing | funding: value}
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

  @doc "Sets the Schema.org `hasCertification` property.\n\nCertification information about a product, organization, service, place, or person."
  def has_certification(%__MODULE__{} = thing, value) do
    %{thing | has_certification: value}
  end

  @doc "Sets the Schema.org `hasEnergyConsumptionDetails` property.\n\nDefines the energy efficiency Category (also known as \"class\" or \"rating\") for a product according to an international energy efficiency standard."
  def has_energy_consumption_details(%__MODULE__{} = thing, value) do
    %{thing | has_energy_consumption_details: value}
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

  @doc "Sets the Schema.org `height` property.\n\nThe height of the item."
  def height(%__MODULE__{} = thing, value) do
    %{thing | height: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `inProductGroupWithID` property.\n\nIndicates the [[productGroupID]] for a [[ProductGroup]] that this product [[isVariantOf]]. "
  def in_product_group_with_id(%__MODULE__{} = thing, value) do
    %{thing | in_product_group_with_id: value}
  end

  @doc "Sets the Schema.org `isAccessoryOrSparePartFor` property.\n\nA pointer to another product (or multiple products) for which this product is an accessory or spare part."
  def is_accessory_or_spare_part_for(%__MODULE__{} = thing, value) do
    %{thing | is_accessory_or_spare_part_for: value}
  end

  @doc "Sets the Schema.org `isConsumableFor` property.\n\nA pointer to another product (or multiple products) for which this product is a consumable."
  def is_consumable_for(%__MODULE__{} = thing, value) do
    %{thing | is_consumable_for: value}
  end

  @doc "Sets the Schema.org `isFamilyFriendly` property.\n\nIndicates whether this content is family friendly."
  def is_family_friendly(%__MODULE__{} = thing, value) do
    %{thing | is_family_friendly: value}
  end

  @doc "Sets the Schema.org `isRelatedTo` property.\n\nA pointer to another, somehow related product (or multiple products)."
  def is_related_to(%__MODULE__{} = thing, value) do
    %{thing | is_related_to: value}
  end

  @doc "Sets the Schema.org `isSimilarTo` property.\n\nA pointer to another, functionally similar product (or multiple products)."
  def is_similar_to(%__MODULE__{} = thing, value) do
    %{thing | is_similar_to: value}
  end

  @doc "Sets the Schema.org `isVariantOf` property.\n\nIndicates the kind of product that this is a variant of. In the case of [[ProductModel]], this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a [[ProductGroup]], the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with [[ProductGroup]], this property can apply to any [[Product]] included in the group."
  def is_variant_of(%__MODULE__{} = thing, value) do
    %{thing | is_variant_of: value}
  end

  @doc "Sets the Schema.org `itemCondition` property.\n\nA predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns."
  def item_condition(%__MODULE__{} = thing, value) do
    %{thing | item_condition: value}
  end

  @doc "Sets the Schema.org `keywords` property.\n\nKeywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."
  def keywords(%__MODULE__{} = thing, value) do
    %{thing | keywords: value}
  end

  @doc "Sets the Schema.org `logo` property.\n\nAn associated logo."
  def logo(%__MODULE__{} = thing, value) do
    %{thing | logo: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `manufacturer` property.\n\nThe manufacturer of the product."
  def manufacturer(%__MODULE__{} = thing, value) do
    %{thing | manufacturer: value}
  end

  @doc "Sets the Schema.org `material` property.\n\nA material that something is made from, e.g. leather, wool, cotton, paper."
  def material(%__MODULE__{} = thing, value) do
    %{thing | material: value}
  end

  @doc "Sets the Schema.org `mobileUrl` property.\n\nThe [[mobileUrl]] property is provided for specific situations in which data consumers need to determine whether one of several provided URLs is a dedicated 'mobile site'.\n\nTo discourage over-use, and reflecting intial usecases, the property is expected only on [[Product]] and [[Offer]], rather than [[Thing]]. The general trend in web technology is towards [responsive design](https://en.wikipedia.org/wiki/Responsive_web_design) in which content can be flexibly adapted to a wide range of browsing environments. Pages and sites referenced with the long-established [[url]] property should ideally also be usable on a wide variety of devices, including mobile phones. In most cases, it would be pointless and counter productive to attempt to update all [[url]] markup to use [[mobileUrl]] for more mobile-oriented pages. The property is intended for the case when items (primarily [[Product]] and [[Offer]]) have extra URLs hosted on an additional \"mobile site\" alongside the main one. It should not be taken as an endorsement of this publication style.\n    "
  def mobile_url(%__MODULE__{} = thing, value) do
    %{thing | mobile_url: value}
  end

  @doc "Sets the Schema.org `model` property.\n\nThe model of the product. Use with the URL of a ProductModel or a textual representation of the model identifier. The URL of the ProductModel can be from an external source. It is recommended to additionally provide strong product identifiers via the gtin8/gtin13/gtin14 and mpn properties."
  def model(%__MODULE__{} = thing, value) do
    %{thing | model: value}
  end

  @doc "Sets the Schema.org `mpn` property.\n\nThe Manufacturer Part Number (MPN) of the product, or the product to which the offer refers."
  def mpn(%__MODULE__{} = thing, value) do
    %{thing | mpn: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `negativeNotes` property.\n\nProvides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry \n\nIn the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described. Since product descriptions \ntend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on [[Product]].\n\nThe property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list)."
  def negative_notes(%__MODULE__{} = thing, value) do
    %{thing | negative_notes: value}
  end

  @doc "Sets the Schema.org `nsn` property.\n\nIndicates the [NATO stock number](https://en.wikipedia.org/wiki/NATO_Stock_Number) (nsn) of a [[Product]]. "
  def nsn(%__MODULE__{} = thing, value) do
    %{thing | nsn: value}
  end

  @doc "Sets the Schema.org `offers` property.\n\nAn offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.\n      "
  def offers(%__MODULE__{} = thing, value) do
    %{thing | offers: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `pattern` property.\n\nA pattern that something has, for example 'polka dot', 'striped', 'Canadian flag'. Values are typically expressed as text, although links to controlled value schemes are also supported."
  def pattern(%__MODULE__{} = thing, value) do
    %{thing | pattern: value}
  end

  @doc "Sets the Schema.org `positiveNotes` property.\n\nProvides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.\n\nIn the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described.\n\nThe property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list)."
  def positive_notes(%__MODULE__{} = thing, value) do
    %{thing | positive_notes: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `predecessorOf` property.\n\nA pointer from a previous, often discontinued variant of the product to its newer variant."
  def predecessor_of(%__MODULE__{} = thing, value) do
    %{thing | predecessor_of: value}
  end

  @doc "Sets the Schema.org `productID` property.\n\nThe product identifier, such as ISBN. For example: ``` meta itemprop=\"productID\" content=\"isbn:123-456-789\" ```."
  def product_id(%__MODULE__{} = thing, value) do
    %{thing | product_id: value}
  end

  @doc "Sets the Schema.org `productionDate` property.\n\nThe date of production of the item, e.g. vehicle."
  def production_date(%__MODULE__{} = thing, value) do
    %{thing | production_date: value}
  end

  @doc "Sets the Schema.org `purchaseDate` property.\n\nThe date the item, e.g. vehicle, was purchased by the current owner."
  def purchase_date(%__MODULE__{} = thing, value) do
    %{thing | purchase_date: value}
  end

  @doc "Sets the Schema.org `releaseDate` property.\n\nThe release date of a product or product model. This can be used to distinguish the exact variant of a product."
  def release_date(%__MODULE__{} = thing, value) do
    %{thing | release_date: value}
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

  @doc "Sets the Schema.org `size` property.\n\nA standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured [[SizeSpecification]]; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable. "
  def size(%__MODULE__{} = thing, value) do
    %{thing | size: value}
  end

  @doc "Sets the Schema.org `sku` property.\n\nThe Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers."
  def sku(%__MODULE__{} = thing, value) do
    %{thing | sku: value}
  end

  @doc "Sets the Schema.org `slogan` property.\n\nA slogan or motto associated with the item."
  def slogan(%__MODULE__{} = thing, value) do
    %{thing | slogan: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `successorOf` property.\n\nA pointer from a newer variant of a product  to its previous, often discontinued predecessor."
  def successor_of(%__MODULE__{} = thing, value) do
    %{thing | successor_of: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `weight` property.\n\nThe weight of the product or person."
  def weight(%__MODULE__{} = thing, value) do
    %{thing | weight: value}
  end

  @doc "Sets the Schema.org `width` property.\n\nThe width of the item."
  def width(%__MODULE__{} = thing, value) do
    %{thing | width: value}
  end
end
