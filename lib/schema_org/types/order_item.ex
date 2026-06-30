defmodule SchemaOrg.OrderItem do
  @moduledoc "An order item is a line of an order. It includes the quantity and shipping details of a bought offer."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :order_delivery,
    :order_item_number,
    :order_item_status,
    :order_quantity,
    :ordered_item,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    order_delivery: "orderDelivery",
    order_item_number: "orderItemNumber",
    order_item_status: "orderItemStatus",
    order_quantity: "orderQuantity",
    ordered_item: "orderedItem",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "OrderItem", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.OrderItem` struct."
  def new, do: %__MODULE__{}
end
