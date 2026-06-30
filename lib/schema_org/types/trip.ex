defmodule SchemaOrg.Trip do
  @moduledoc "A trip or journey. An itinerary of visits to one or more places."

  defstruct [
    :additional_type,
    :alternate_name,
    :arrival_time,
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
    arrival_time: "arrivalTime",
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
  def __schema_org__, do: %{type: "Trip", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Trip` struct."
  def new, do: %__MODULE__{}
end
