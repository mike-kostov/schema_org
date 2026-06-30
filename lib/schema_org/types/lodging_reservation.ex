defmodule SchemaOrg.LodgingReservation do
  @moduledoc "A reservation for lodging at a hotel, motel, inn, etc.\\n\\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations."

  defstruct [
    :additional_type,
    :alternate_name,
    :booking_agent,
    :booking_time,
    :broker,
    :checkin_time,
    :checkout_time,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :lodging_unit_description,
    :lodging_unit_type,
    :main_entity_of_page,
    :modified_time,
    :name,
    :num_adults,
    :num_children,
    :owner,
    :potential_action,
    :price_currency,
    :program_membership_used,
    :provider,
    :reservation_for,
    :reservation_id,
    :reservation_status,
    :reserved_ticket,
    :same_as,
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
    checkin_time: "checkinTime",
    checkout_time: "checkoutTime",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    lodging_unit_description: "lodgingUnitDescription",
    lodging_unit_type: "lodgingUnitType",
    main_entity_of_page: "mainEntityOfPage",
    modified_time: "modifiedTime",
    name: "name",
    num_adults: "numAdults",
    num_children: "numChildren",
    owner: "owner",
    potential_action: "potentialAction",
    price_currency: "priceCurrency",
    program_membership_used: "programMembershipUsed",
    provider: "provider",
    reservation_for: "reservationFor",
    reservation_id: "reservationId",
    reservation_status: "reservationStatus",
    reserved_ticket: "reservedTicket",
    same_as: "sameAs",
    subject_of: "subjectOf",
    total_price: "totalPrice",
    under_name: "underName",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "LodgingReservation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.LodgingReservation` struct."
  def new, do: %__MODULE__{}
end
