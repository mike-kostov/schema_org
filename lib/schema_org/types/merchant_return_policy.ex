defmodule SchemaOrg.MerchantReturnPolicy do
  @moduledoc "A MerchantReturnPolicy provides information about product return policies associated with an `Organization`, `Product`, or `Offer`."

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
end
