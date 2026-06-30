defmodule SchemaOrg.MerchantReturnPolicySeasonalOverride do
  @moduledoc "A seasonal override of a return policy, for example used for holidays."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :end_date,
    :identifier,
    :image,
    :main_entity_of_page,
    :merchant_return_days,
    :name,
    :owner,
    :potential_action,
    :refund_type,
    :restocking_fee,
    :return_fees,
    :return_method,
    :return_policy_category,
    :return_shipping_fees_amount,
    :same_as,
    :start_date,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_date: "endDate",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    merchant_return_days: "merchantReturnDays",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    refund_type: "refundType",
    restocking_fee: "restockingFee",
    return_fees: "returnFees",
    return_method: "returnMethod",
    return_policy_category: "returnPolicyCategory",
    return_shipping_fees_amount: "returnShippingFeesAmount",
    same_as: "sameAs",
    start_date: "startDate",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MerchantReturnPolicySeasonalOverride", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MerchantReturnPolicySeasonalOverride` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
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

  @doc "Sets the Schema.org `endDate` property.\n\nThe end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."
  def end_date(%__MODULE__{} = thing, value) do
    %{thing | end_date: value}
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

  @doc "Sets the Schema.org `merchantReturnDays` property.\n\nSpecifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as [[MerchantReturnFiniteReturnWindow]]."
  def merchant_return_days(%__MODULE__{} = thing, value) do
    %{thing | merchant_return_days: value}
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

  @doc "Sets the Schema.org `returnMethod` property.\n\nThe type of return method offered, specified from an enumeration."
  def return_method(%__MODULE__{} = thing, value) do
    %{thing | return_method: value}
  end

  @doc "Sets the Schema.org `returnPolicyCategory` property.\n\nSpecifies an applicable return policy (from an enumeration)."
  def return_policy_category(%__MODULE__{} = thing, value) do
    %{thing | return_policy_category: value}
  end

  @doc "Sets the Schema.org `returnShippingFeesAmount` property.\n\nAmount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals [[ReturnShippingFees]]."
  def return_shipping_fees_amount(%__MODULE__{} = thing, value) do
    %{thing | return_shipping_fees_amount: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `startDate` property.\n\nThe start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."
  def start_date(%__MODULE__{} = thing, value) do
    %{thing | start_date: value}
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
