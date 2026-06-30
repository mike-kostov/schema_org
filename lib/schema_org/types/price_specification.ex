defmodule SchemaOrg.PriceSpecification do
  @moduledoc "A structured value representing a price or price range. Typically, only the subclasses of this type are used for markup. It is recommended to use `MonetaryAmount` to describe independent amounts of money such as a salary, credit card limits, etc."

  defstruct [
    :additional_type,
    :alternate_name,
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
  def __schema_org__, do: %{type: "PriceSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.PriceSpecification` struct."
  def new, do: %__MODULE__{}
end
