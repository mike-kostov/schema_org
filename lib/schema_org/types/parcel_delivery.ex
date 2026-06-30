defmodule SchemaOrg.ParcelDelivery do
  @moduledoc "The delivery of a parcel either via the postal service or a commercial service."

  defstruct [
    :additional_type,
    :alternate_name,
    :carrier,
    :delivery_address,
    :delivery_status,
    :description,
    :disambiguating_description,
    :expected_arrival_from,
    :expected_arrival_until,
    :has_delivery_method,
    :identifier,
    :image,
    :item_shipped,
    :main_entity_of_page,
    :name,
    :origin_address,
    :owner,
    :part_of_order,
    :potential_action,
    :provider,
    :same_as,
    :subject_of,
    :tracking_number,
    :tracking_url,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    carrier: "carrier",
    delivery_address: "deliveryAddress",
    delivery_status: "deliveryStatus",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    expected_arrival_from: "expectedArrivalFrom",
    expected_arrival_until: "expectedArrivalUntil",
    has_delivery_method: "hasDeliveryMethod",
    identifier: "identifier",
    image: "image",
    item_shipped: "itemShipped",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    origin_address: "originAddress",
    owner: "owner",
    part_of_order: "partOfOrder",
    potential_action: "potentialAction",
    provider: "provider",
    same_as: "sameAs",
    subject_of: "subjectOf",
    tracking_number: "trackingNumber",
    tracking_url: "trackingUrl",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ParcelDelivery", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ParcelDelivery` struct."
  def new, do: %__MODULE__{}
end
