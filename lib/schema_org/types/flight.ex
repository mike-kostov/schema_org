defmodule SchemaOrg.Flight do
  @moduledoc "An airline flight."

  defstruct [
    :additional_type,
    :aircraft,
    :alternate_name,
    :arrival_airport,
    :arrival_gate,
    :arrival_terminal,
    :arrival_time,
    :boarding_policy,
    :carrier,
    :departure_airport,
    :departure_gate,
    :departure_terminal,
    :departure_time,
    :description,
    :disambiguating_description,
    :estimated_flight_duration,
    :flight_distance,
    :flight_number,
    :identifier,
    :image,
    :itinerary,
    :main_entity_of_page,
    :meal_service,
    :name,
    :offers,
    :owner,
    :part_of_trip,
    :potential_action,
    :provider,
    :same_as,
    :seller,
    :sub_trip,
    :subject_of,
    :trip_origin,
    :url,
    :web_checkin_time
  ]

  @json_keys %{
    additional_type: "additionalType",
    aircraft: "aircraft",
    alternate_name: "alternateName",
    arrival_airport: "arrivalAirport",
    arrival_gate: "arrivalGate",
    arrival_terminal: "arrivalTerminal",
    arrival_time: "arrivalTime",
    boarding_policy: "boardingPolicy",
    carrier: "carrier",
    departure_airport: "departureAirport",
    departure_gate: "departureGate",
    departure_terminal: "departureTerminal",
    departure_time: "departureTime",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    estimated_flight_duration: "estimatedFlightDuration",
    flight_distance: "flightDistance",
    flight_number: "flightNumber",
    identifier: "identifier",
    image: "image",
    itinerary: "itinerary",
    main_entity_of_page: "mainEntityOfPage",
    meal_service: "mealService",
    name: "name",
    offers: "offers",
    owner: "owner",
    part_of_trip: "partOfTrip",
    potential_action: "potentialAction",
    provider: "provider",
    same_as: "sameAs",
    seller: "seller",
    sub_trip: "subTrip",
    subject_of: "subjectOf",
    trip_origin: "tripOrigin",
    url: "url",
    web_checkin_time: "webCheckinTime"
  }

  @doc false
  def __schema_org__, do: %{type: "Flight", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Flight` struct."
  def new, do: %__MODULE__{}
end
