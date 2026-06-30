defmodule SchemaOrg.BusTrip do
  @moduledoc "A trip on a commercial bus line."

  defstruct [
    :additional_type,
    :alternate_name,
    :arrival_bus_stop,
    :arrival_time,
    :bus_name,
    :bus_number,
    :departure_bus_stop,
    :departure_time,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :itinerary,
    :main_entity_of_page,
    :name,
    :offers,
    :owner,
    :part_of_trip,
    :potential_action,
    :provider,
    :same_as,
    :sub_trip,
    :subject_of,
    :trip_origin,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    arrival_bus_stop: "arrivalBusStop",
    arrival_time: "arrivalTime",
    bus_name: "busName",
    bus_number: "busNumber",
    departure_bus_stop: "departureBusStop",
    departure_time: "departureTime",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    itinerary: "itinerary",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    offers: "offers",
    owner: "owner",
    part_of_trip: "partOfTrip",
    potential_action: "potentialAction",
    provider: "provider",
    same_as: "sameAs",
    sub_trip: "subTrip",
    subject_of: "subjectOf",
    trip_origin: "tripOrigin",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "BusTrip", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.BusTrip` struct."
  def new, do: %__MODULE__{}
end
