defmodule SchemaOrg.TouristTrip do
  @moduledoc "A tourist trip. A created itinerary of visits to one or more places of interest ([[TouristAttraction]]/[[TouristDestination]]) often linked by a similar theme, geographic area, or interest to a particular [[touristType]]. The [UNWTO](http://www2.unwto.org/) defines tourism trip as the Trip taken by visitors.\n  (See examples below.)"

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
    :tourist_type,
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
    tourist_type: "touristType",
    trip_origin: "tripOrigin",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "TouristTrip", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TouristTrip` struct."
  def new, do: %__MODULE__{}
end
