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
end
