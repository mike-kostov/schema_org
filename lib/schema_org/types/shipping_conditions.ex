defmodule SchemaOrg.ShippingConditions do
  @moduledoc "ShippingConditions represent a set of constraints and information about the conditions of shipping a product. Such conditions may apply to only a subset of the products being shipped, depending on aspects of the product like weight, size, price, destination, and others. All the specified conditions must be met for this ShippingConditions to apply."

  defstruct [
    :additional_type,
    :alternate_name,
    :depth,
    :description,
    :disambiguating_description,
    :does_not_ship,
    :height,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :num_items,
    :order_value,
    :owner,
    :potential_action,
    :same_as,
    :seasonal_override,
    :shipping_destination,
    :shipping_origin,
    :shipping_rate,
    :subject_of,
    :transit_time,
    :url,
    :weight,
    :width
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    depth: "depth",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    does_not_ship: "doesNotShip",
    height: "height",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    num_items: "numItems",
    order_value: "orderValue",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    seasonal_override: "seasonalOverride",
    shipping_destination: "shippingDestination",
    shipping_origin: "shippingOrigin",
    shipping_rate: "shippingRate",
    subject_of: "subjectOf",
    transit_time: "transitTime",
    url: "url",
    weight: "weight",
    width: "width"
  }

  @doc false
  def __schema_org__, do: %{type: "ShippingConditions", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ShippingConditions` struct."
  def new, do: %__MODULE__{}
end
