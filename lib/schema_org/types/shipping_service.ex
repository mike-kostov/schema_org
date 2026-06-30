defmodule SchemaOrg.ShippingService do
  @moduledoc "ShippingService represents the criteria used to determine if and how an offer could be shipped to a customer."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :fulfillment_type,
    :handling_time,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :shipping_conditions,
    :subject_of,
    :url,
    :valid_for_member_tier
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    fulfillment_type: "fulfillmentType",
    handling_time: "handlingTime",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    shipping_conditions: "shippingConditions",
    subject_of: "subjectOf",
    url: "url",
    valid_for_member_tier: "validForMemberTier"
  }

  @doc false
  def __schema_org__, do: %{type: "ShippingService", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ShippingService` struct."
  def new, do: %__MODULE__{}
end
