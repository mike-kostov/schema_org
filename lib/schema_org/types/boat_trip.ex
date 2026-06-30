defmodule SchemaOrg.BoatTrip do
  @moduledoc "A trip on a commercial ferry line."

  defstruct [
    :additional_type,
    :alternate_name,
    :arrival_boat_terminal,
    :arrival_time,
    :departure_boat_terminal,
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
    arrival_boat_terminal: "arrivalBoatTerminal",
    arrival_time: "arrivalTime",
    departure_boat_terminal: "departureBoatTerminal",
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
  def __schema_org__, do: %{type: "BoatTrip", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.BoatTrip` struct."
  def new, do: %__MODULE__{}
end
