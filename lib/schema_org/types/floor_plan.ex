defmodule SchemaOrg.FloorPlan do
  @moduledoc "A FloorPlan is an explicit representation of a collection of similar accommodations, allowing the provision of common information (room counts, sizes, layout diagrams) and offers for rental or sale. In typical use, some `ApartmentComplex` has an `accommodationFloorPlan` which is a `FloorPlan`.  A FloorPlan is always in the context of a particular place, either a larger `ApartmentComplex` or a single `Apartment`. The visual/spatial aspects of a floor plan (i.e. room layout, [see wikipedia](https://en.wikipedia.org/wiki/Floor_plan)) can be indicated using `image`."

  defstruct [
    :additional_type,
    :alternate_name,
    :amenity_feature,
    :description,
    :disambiguating_description,
    :floor_size,
    :identifier,
    :image,
    :is_plan_for_apartment,
    :layout_image,
    :main_entity_of_page,
    :name,
    :number_of_accommodation_units,
    :number_of_available_accommodation_units,
    :number_of_bathrooms_total,
    :number_of_bedrooms,
    :number_of_full_bathrooms,
    :number_of_partial_bathrooms,
    :number_of_rooms,
    :owner,
    :pets_allowed,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    amenity_feature: "amenityFeature",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    floor_size: "floorSize",
    identifier: "identifier",
    image: "image",
    is_plan_for_apartment: "isPlanForApartment",
    layout_image: "layoutImage",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    number_of_accommodation_units: "numberOfAccommodationUnits",
    number_of_available_accommodation_units: "numberOfAvailableAccommodationUnits",
    number_of_bathrooms_total: "numberOfBathroomsTotal",
    number_of_bedrooms: "numberOfBedrooms",
    number_of_full_bathrooms: "numberOfFullBathrooms",
    number_of_partial_bathrooms: "numberOfPartialBathrooms",
    number_of_rooms: "numberOfRooms",
    owner: "owner",
    pets_allowed: "petsAllowed",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "FloorPlan", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.FloorPlan` struct."
  def new, do: %__MODULE__{}
end
