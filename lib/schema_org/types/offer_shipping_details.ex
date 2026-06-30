defmodule SchemaOrg.OfferShippingDetails do
  @moduledoc "OfferShippingDetails represents information about shipping destinations.\n\nMultiple of these entities can be used to represent different shipping rates for different destinations:\n\nOne entity for Alaska/Hawaii. A different one for continental US. A different one for all France.\n\nMultiple of these entities can be used to represent different shipping costs and delivery times.\n\nTwo entities that are identical but differ in rate and time:\n\nE.g. Cheaper and slower: $5 in 5-7 days\nor Fast and expensive: $15 in 1-2 days."

  defstruct [
    :additional_type,
    :alternate_name,
    :delivery_time,
    :depth,
    :description,
    :disambiguating_description,
    :does_not_ship,
    :has_shipping_service,
    :height,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :shipping_destination,
    :shipping_origin,
    :shipping_rate,
    :subject_of,
    :url,
    :valid_for_member_tier,
    :weight,
    :width
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    delivery_time: "deliveryTime",
    depth: "depth",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    does_not_ship: "doesNotShip",
    has_shipping_service: "hasShippingService",
    height: "height",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    shipping_destination: "shippingDestination",
    shipping_origin: "shippingOrigin",
    shipping_rate: "shippingRate",
    subject_of: "subjectOf",
    url: "url",
    valid_for_member_tier: "validForMemberTier",
    weight: "weight",
    width: "width"
  }

  @doc false
  def __schema_org__, do: %{type: "OfferShippingDetails", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.OfferShippingDetails` struct."
  def new, do: %__MODULE__{}
end
