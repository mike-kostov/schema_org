defmodule SchemaOrg.TrainTrip do
  @moduledoc "A trip on a commercial train line."

  defstruct [
    :additional_type,
    :alternate_name,
    :arrival_platform,
    :arrival_station,
    :arrival_time,
    :departure_platform,
    :departure_station,
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
    :train_name,
    :train_number,
    :trip_origin,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    arrival_platform: "arrivalPlatform",
    arrival_station: "arrivalStation",
    arrival_time: "arrivalTime",
    departure_platform: "departurePlatform",
    departure_station: "departureStation",
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
    train_name: "trainName",
    train_number: "trainNumber",
    trip_origin: "tripOrigin",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "TrainTrip", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TrainTrip` struct."
  def new, do: %__MODULE__{}
end
