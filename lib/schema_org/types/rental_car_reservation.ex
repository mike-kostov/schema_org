defmodule SchemaOrg.RentalCarReservation do
  @moduledoc "A reservation for a rental car.\\n\\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations."

  defstruct [
    :additional_type,
    :alternate_name,
    :booking_agent,
    :booking_time,
    :broker,
    :description,
    :disambiguating_description,
    :dropoff_location,
    :dropoff_time,
    :identifier,
    :image,
    :main_entity_of_page,
    :modified_time,
    :name,
    :owner,
    :pickup_location,
    :pickup_time,
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
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    dropoff_location: "dropoffLocation",
    dropoff_time: "dropoffTime",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    modified_time: "modifiedTime",
    name: "name",
    owner: "owner",
    pickup_location: "pickupLocation",
    pickup_time: "pickupTime",
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
  def __schema_org__, do: %{type: "RentalCarReservation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.RentalCarReservation` struct."
  def new, do: %__MODULE__{}
end
