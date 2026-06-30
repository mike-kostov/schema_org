defmodule SchemaOrg.MerchantReturnPolicy do
  @moduledoc "A MerchantReturnPolicy provides information about product return policies associated with an [[Organization]], [[Product]], or [[Offer]]."

  defstruct [
    :additional_property,
    :additional_type,
    :alternate_name,
    :applicable_country,
    :customer_remorse_return_fees,
    :customer_remorse_return_label_source,
    :customer_remorse_return_shipping_fees_amount,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :in_store_returns_offered,
    :item_condition,
    :item_defect_return_fees,
    :item_defect_return_label_source,
    :item_defect_return_shipping_fees_amount,
    :main_entity_of_page,
    :merchant_return_days,
    :merchant_return_link,
    :name,
    :owner,
    :potential_action,
    :refund_type,
    :restocking_fee,
    :return_fees,
    :return_label_source,
    :return_method,
    :return_policy_category,
    :return_policy_country,
    :return_policy_seasonal_override,
    :return_shipping_fees_amount,
    :same_as,
    :subject_of,
    :url,
    :valid_for_member_tier
  ]

  @json_keys %{
    additional_property: "additionalProperty",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    applicable_country: "applicableCountry",
    customer_remorse_return_fees: "customerRemorseReturnFees",
    customer_remorse_return_label_source: "customerRemorseReturnLabelSource",
    customer_remorse_return_shipping_fees_amount: "customerRemorseReturnShippingFeesAmount",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    in_store_returns_offered: "inStoreReturnsOffered",
    item_condition: "itemCondition",
    item_defect_return_fees: "itemDefectReturnFees",
    item_defect_return_label_source: "itemDefectReturnLabelSource",
    item_defect_return_shipping_fees_amount: "itemDefectReturnShippingFeesAmount",
    main_entity_of_page: "mainEntityOfPage",
    merchant_return_days: "merchantReturnDays",
    merchant_return_link: "merchantReturnLink",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    refund_type: "refundType",
    restocking_fee: "restockingFee",
    return_fees: "returnFees",
    return_label_source: "returnLabelSource",
    return_method: "returnMethod",
    return_policy_category: "returnPolicyCategory",
    return_policy_country: "returnPolicyCountry",
    return_policy_seasonal_override: "returnPolicySeasonalOverride",
    return_shipping_fees_amount: "returnShippingFeesAmount",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    valid_for_member_tier: "validForMemberTier"
  }

  @doc false
  def __schema_org__, do: %{type: "MerchantReturnPolicy", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MerchantReturnPolicy` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalProperty` property.\n\nA property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.\n"
  def additional_property(%__MODULE__{} = thing, value) do
    %{thing | additional_property: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `applicableCountry` property.\n\nA country where a particular merchant return policy applies to, for example the two-letter ISO 3166-1 alpha-2 country code."
  def applicable_country(%__MODULE__{} = thing, value) do
    %{thing | applicable_country: value}
  end

  @doc "Sets the Schema.org `customerRemorseReturnFees` property.\n\nThe type of return fees if the product is returned due to customer remorse."
  def customer_remorse_return_fees(%__MODULE__{} = thing, value) do
    %{thing | customer_remorse_return_fees: value}
  end

  @doc "Sets the Schema.org `customerRemorseReturnLabelSource` property.\n\nThe method (from an enumeration) by which the customer obtains a return shipping label for a product returned due to customer remorse."
  def customer_remorse_return_label_source(%__MODULE__{} = thing, value) do
    %{thing | customer_remorse_return_label_source: value}
  end

  @doc "Sets the Schema.org `customerRemorseReturnShippingFeesAmount` property.\n\nThe amount of shipping costs if a product is returned due to customer remorse. Applicable when property [[customerRemorseReturnFees]] equals [[ReturnShippingFees]]."
  def customer_remorse_return_shipping_fees_amount(%__MODULE__{} = thing, value) do
    %{thing | customer_remorse_return_shipping_fees_amount: value}
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

  @doc "Sets the Schema.org `inStoreReturnsOffered` property.\n\nAre in-store returns offered? (For more advanced return methods use the [[returnMethod]] property.)"
  def in_store_returns_offered(%__MODULE__{} = thing, value) do
    %{thing | in_store_returns_offered: value}
  end

  @doc "Sets the Schema.org `itemCondition` property.\n\nA predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns."
  def item_condition(%__MODULE__{} = thing, value) do
    %{thing | item_condition: value}
  end

  @doc "Sets the Schema.org `itemDefectReturnFees` property.\n\nThe type of return fees for returns of defect products."
  def item_defect_return_fees(%__MODULE__{} = thing, value) do
    %{thing | item_defect_return_fees: value}
  end

  @doc "Sets the Schema.org `itemDefectReturnLabelSource` property.\n\nThe method (from an enumeration) by which the customer obtains a return shipping label for a defect product."
  def item_defect_return_label_source(%__MODULE__{} = thing, value) do
    %{thing | item_defect_return_label_source: value}
  end

  @doc "Sets the Schema.org `itemDefectReturnShippingFeesAmount` property.\n\nAmount of shipping costs for defect product returns. Applicable when property [[itemDefectReturnFees]] equals [[ReturnShippingFees]]."
  def item_defect_return_shipping_fees_amount(%__MODULE__{} = thing, value) do
    %{thing | item_defect_return_shipping_fees_amount: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `merchantReturnDays` property.\n\nSpecifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as [[MerchantReturnFiniteReturnWindow]]."
  def merchant_return_days(%__MODULE__{} = thing, value) do
    %{thing | merchant_return_days: value}
  end

  @doc "Sets the Schema.org `merchantReturnLink` property.\n\nSpecifies a Web page or service by URL, for product returns."
  def merchant_return_link(%__MODULE__{} = thing, value) do
    %{thing | merchant_return_link: value}
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

  @doc "Sets the Schema.org `refundType` property.\n\nA refund type, from an enumerated list."
  def refund_type(%__MODULE__{} = thing, value) do
    %{thing | refund_type: value}
  end

  @doc "Sets the Schema.org `restockingFee` property.\n\nUse [[MonetaryAmount]] to specify a fixed restocking fee for product returns, or use [[Number]] to specify a percentage of the product price paid by the customer."
  def restocking_fee(%__MODULE__{} = thing, value) do
    %{thing | restocking_fee: value}
  end

  @doc "Sets the Schema.org `returnFees` property.\n\nThe type of return fees for purchased products (for any return reason)."
  def return_fees(%__MODULE__{} = thing, value) do
    %{thing | return_fees: value}
  end

  @doc "Sets the Schema.org `returnLabelSource` property.\n\nThe method (from an enumeration) by which the customer obtains a return shipping label for a product returned for any reason."
  def return_label_source(%__MODULE__{} = thing, value) do
    %{thing | return_label_source: value}
  end

  @doc "Sets the Schema.org `returnMethod` property.\n\nThe type of return method offered, specified from an enumeration."
  def return_method(%__MODULE__{} = thing, value) do
    %{thing | return_method: value}
  end

  @doc "Sets the Schema.org `returnPolicyCategory` property.\n\nSpecifies an applicable return policy (from an enumeration)."
  def return_policy_category(%__MODULE__{} = thing, value) do
    %{thing | return_policy_category: value}
  end

  @doc "Sets the Schema.org `returnPolicyCountry` property.\n\nThe country where the product has to be sent to for returns, for example \"Ireland\" using the [[name]] property of [[Country]]. You can also provide the two-letter [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1). Note that this can be different from the country where the product was originally shipped from or sent to."
  def return_policy_country(%__MODULE__{} = thing, value) do
    %{thing | return_policy_country: value}
  end

  @doc "Sets the Schema.org `returnPolicySeasonalOverride` property.\n\nSeasonal override of a return policy."
  def return_policy_seasonal_override(%__MODULE__{} = thing, value) do
    %{thing | return_policy_seasonal_override: value}
  end

  @doc "Sets the Schema.org `returnShippingFeesAmount` property.\n\nAmount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals [[ReturnShippingFees]]."
  def return_shipping_fees_amount(%__MODULE__{} = thing, value) do
    %{thing | return_shipping_fees_amount: value}
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
end
