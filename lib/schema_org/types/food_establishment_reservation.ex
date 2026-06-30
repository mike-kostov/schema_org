defmodule SchemaOrg.FoodEstablishmentReservation do
  @moduledoc "A reservation to dine at a food-related business.\\n\\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations."

  defstruct [
    :additional_type,
    :alternate_name,
    :booking_agent,
    :booking_time,
    :broker,
    :description,
    :disambiguating_description,
    :end_time,
    :identifier,
    :image,
    :main_entity_of_page,
    :modified_time,
    :name,
    :owner,
    :party_size,
    :potential_action,
    :price_currency,
    :program_membership_used,
    :provider,
    :reservation_for,
    :reservation_id,
    :reservation_status,
    :reserved_ticket,
    :same_as,
    :start_time,
    :subject_of,
    :total_price,
    :under_name,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    booking_agent: "bookingAgent",
    booking_time: "bookingTime",
    broker: "broker",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_time: "endTime",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    modified_time: "modifiedTime",
    name: "name",
    owner: "owner",
    party_size: "partySize",
    potential_action: "potentialAction",
    price_currency: "priceCurrency",
    program_membership_used: "programMembershipUsed",
    provider: "provider",
    reservation_for: "reservationFor",
    reservation_id: "reservationId",
    reservation_status: "reservationStatus",
    reserved_ticket: "reservedTicket",
    same_as: "sameAs",
    start_time: "startTime",
    subject_of: "subjectOf",
    total_price: "totalPrice",
    under_name: "underName",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "FoodEstablishmentReservation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.FoodEstablishmentReservation` struct."
  def new, do: %__MODULE__{}
end
