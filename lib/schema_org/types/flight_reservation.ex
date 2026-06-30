defmodule SchemaOrg.FlightReservation do
  @moduledoc "A reservation for air travel.\\n\\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, use `Offer`."

  defstruct [
    :additional_type,
    :alternate_name,
    :boarding_group,
    :booking_agent,
    :booking_time,
    :broker,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :modified_time,
    :name,
    :owner,
    :passenger_priority_status,
    :passenger_sequence_number,
    :potential_action,
    :price_currency,
    :program_membership_used,
    :provider,
    :reservation_for,
    :reservation_id,
    :reservation_status,
    :reserved_ticket,
    :same_as,
    :security_screening,
    :subject_of,
    :total_price,
    :under_name,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    boarding_group: "boardingGroup",
    booking_agent: "bookingAgent",
    booking_time: "bookingTime",
    broker: "broker",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    modified_time: "modifiedTime",
    name: "name",
    owner: "owner",
    passenger_priority_status: "passengerPriorityStatus",
    passenger_sequence_number: "passengerSequenceNumber",
    potential_action: "potentialAction",
    price_currency: "priceCurrency",
    program_membership_used: "programMembershipUsed",
    provider: "provider",
    reservation_for: "reservationFor",
    reservation_id: "reservationId",
    reservation_status: "reservationStatus",
    reserved_ticket: "reservedTicket",
    same_as: "sameAs",
    security_screening: "securityScreening",
    subject_of: "subjectOf",
    total_price: "totalPrice",
    under_name: "underName",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "FlightReservation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.FlightReservation` struct."
  def new, do: %__MODULE__{}
end
