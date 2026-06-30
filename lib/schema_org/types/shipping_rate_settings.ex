defmodule SchemaOrg.ShippingRateSettings do
  @moduledoc "A ShippingRateSettings represents re-usable pieces of shipping information. It is designed for publication on an URL that may be referenced via the `shippingSettingsLink` property of an `OfferShippingDetails`. Several occurrences can be published, distinguished and matched (i.e. identified/referenced) by their different values for `shippingLabel`."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :does_not_ship,
    :free_shipping_threshold,
    :identifier,
    :image,
    :is_unlabelled_fallback,
    :main_entity_of_page,
    :name,
    :order_percentage,
    :owner,
    :potential_action,
    :same_as,
    :shipping_destination,
    :shipping_rate,
    :subject_of,
    :url,
    :weight_percentage
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    does_not_ship: "doesNotShip",
    free_shipping_threshold: "freeShippingThreshold",
    identifier: "identifier",
    image: "image",
    is_unlabelled_fallback: "isUnlabelledFallback",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    order_percentage: "orderPercentage",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    shipping_destination: "shippingDestination",
    shipping_rate: "shippingRate",
    subject_of: "subjectOf",
    url: "url",
    weight_percentage: "weightPercentage"
  }

  @doc false
  def __schema_org__, do: %{type: "ShippingRateSettings", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ShippingRateSettings` struct."
  def new, do: %__MODULE__{}
end
