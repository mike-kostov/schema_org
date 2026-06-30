defmodule SchemaOrg.Order do
  @moduledoc "An order is a confirmation of a transaction (a receipt), which can contain multiple line items, each represented by an Offer that has been accepted by the customer."

  defstruct [
    :accepted_offer,
    :additional_type,
    :alternate_name,
    :billing_address,
    :broker,
    :confirmation_number,
    :customer,
    :description,
    :disambiguating_description,
    :discount,
    :discount_code,
    :discount_currency,
    :identifier,
    :image,
    :is_gift,
    :main_entity_of_page,
    :merchant,
    :name,
    :order_date,
    :order_delivery,
    :order_number,
    :order_status,
    :ordered_item,
    :owner,
    :part_of_invoice,
    :payment_due,
    :payment_due_date,
    :payment_method,
    :payment_method_id,
    :payment_url,
    :potential_action,
    :same_as,
    :seller,
    :subject_of,
    :url
  ]

  @json_keys %{
    accepted_offer: "acceptedOffer",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    billing_address: "billingAddress",
    broker: "broker",
    confirmation_number: "confirmationNumber",
    customer: "customer",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    discount: "discount",
    discount_code: "discountCode",
    discount_currency: "discountCurrency",
    identifier: "identifier",
    image: "image",
    is_gift: "isGift",
    main_entity_of_page: "mainEntityOfPage",
    merchant: "merchant",
    name: "name",
    order_date: "orderDate",
    order_delivery: "orderDelivery",
    order_number: "orderNumber",
    order_status: "orderStatus",
    ordered_item: "orderedItem",
    owner: "owner",
    part_of_invoice: "partOfInvoice",
    payment_due: "paymentDue",
    payment_due_date: "paymentDueDate",
    payment_method: "paymentMethod",
    payment_method_id: "paymentMethodId",
    payment_url: "paymentUrl",
    potential_action: "potentialAction",
    same_as: "sameAs",
    seller: "seller",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Order", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Order` struct."
  def new, do: %__MODULE__{}
end
