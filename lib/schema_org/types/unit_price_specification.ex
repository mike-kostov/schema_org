defmodule SchemaOrg.UnitPriceSpecification do
  @moduledoc "The price asked for a given offer by the respective organization or person."

  defstruct [
    :additional_type,
    :alternate_name,
    :billing_duration,
    :billing_increment,
    :billing_start,
    :description,
    :disambiguating_description,
    :eligible_quantity,
    :eligible_transaction_volume,
    :identifier,
    :image,
    :main_entity_of_page,
    :max_price,
    :membership_points_earned,
    :min_price,
    :name,
    :owner,
    :potential_action,
    :price,
    :price_component_type,
    :price_currency,
    :price_type,
    :reference_quantity,
    :same_as,
    :subject_of,
    :unit_code,
    :unit_text,
    :url,
    :valid_for_member_tier,
    :valid_from,
    :valid_through,
    :value_added_tax_included
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    billing_duration: "billingDuration",
    billing_increment: "billingIncrement",
    billing_start: "billingStart",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    eligible_quantity: "eligibleQuantity",
    eligible_transaction_volume: "eligibleTransactionVolume",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    max_price: "maxPrice",
    membership_points_earned: "membershipPointsEarned",
    min_price: "minPrice",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    price: "price",
    price_component_type: "priceComponentType",
    price_currency: "priceCurrency",
    price_type: "priceType",
    reference_quantity: "referenceQuantity",
    same_as: "sameAs",
    subject_of: "subjectOf",
    unit_code: "unitCode",
    unit_text: "unitText",
    url: "url",
    valid_for_member_tier: "validForMemberTier",
    valid_from: "validFrom",
    valid_through: "validThrough",
    value_added_tax_included: "valueAddedTaxIncluded"
  }

  @doc false
  def __schema_org__, do: %{type: "UnitPriceSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.UnitPriceSpecification` struct."
  def new, do: %__MODULE__{}
end
