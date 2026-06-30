defmodule SchemaOrg.FloorPlan do
  @moduledoc "A FloorPlan is an explicit representation of a collection of similar accommodations, allowing the provision of common information (room counts, sizes, layout diagrams) and offers for rental or sale. In typical use, some [[ApartmentComplex]] has an [[accommodationFloorPlan]] which is a [[FloorPlan]].  A FloorPlan is always in the context of a particular place, either a larger [[ApartmentComplex]] or a single [[Apartment]]. The visual/spatial aspects of a floor plan (i.e. room layout, [see wikipedia](https://en.wikipedia.org/wiki/Floor_plan)) can be indicated using [[image]]. "

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

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `amenityFeature` property.\n\nAn amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs."
  def amenity_feature(%__MODULE__{} = thing, value) do
    %{thing | amenity_feature: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `floorSize` property.\n\nThe size of the accommodation, e.g. in square meter or squarefoot.\nTypical unit code(s): MTK for square meter, FTK for square foot, or YDK for square yard."
  def floor_size(%__MODULE__{} = thing, value) do
    %{thing | floor_size: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `isPlanForApartment` property.\n\nIndicates some accommodation that this floor plan describes."
  def is_plan_for_apartment(%__MODULE__{} = thing, value) do
    %{thing | is_plan_for_apartment: value}
  end

  @doc "Sets the Schema.org `layoutImage` property.\n\nA schematic image showing the floorplan layout."
  def layout_image(%__MODULE__{} = thing, value) do
    %{thing | layout_image: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `numberOfAccommodationUnits` property.\n\nIndicates the total (available plus unavailable) number of accommodation units in an [[ApartmentComplex]], or the number of accommodation units for a specific [[FloorPlan]] (within its specific [[ApartmentComplex]]). See also [[numberOfAvailableAccommodationUnits]]."
  def number_of_accommodation_units(%__MODULE__{} = thing, value) do
    %{thing | number_of_accommodation_units: value}
  end

  @doc "Sets the Schema.org `numberOfAvailableAccommodationUnits` property.\n\nIndicates the number of available accommodation units in an [[ApartmentComplex]], or the number of accommodation units for a specific [[FloorPlan]] (within its specific [[ApartmentComplex]]). See also [[numberOfAccommodationUnits]]."
  def number_of_available_accommodation_units(%__MODULE__{} = thing, value) do
    %{thing | number_of_available_accommodation_units: value}
  end

  @doc "Sets the Schema.org `numberOfBathroomsTotal` property.\n\nThe total integer number of bathrooms in some [[Accommodation]], following real estate conventions as [documented in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsTotalInteger+Field): \"The simple sum of the number of bathrooms. For example for a property with two Full Bathrooms and one Half Bathroom, the Bathrooms Total Integer will be 3.\". See also [[numberOfRooms]]."
  def number_of_bathrooms_total(%__MODULE__{} = thing, value) do
    %{thing | number_of_bathrooms_total: value}
  end

  @doc "Sets the Schema.org `numberOfBedrooms` property.\n\nThe total integer number of bedrooms in a some [[Accommodation]], [[ApartmentComplex]] or [[FloorPlan]]."
  def number_of_bedrooms(%__MODULE__{} = thing, value) do
    %{thing | number_of_bedrooms: value}
  end

  @doc "Sets the Schema.org `numberOfFullBathrooms` property.\n\nNumber of full bathrooms - The total number of full and ¾ bathrooms in an [[Accommodation]]. This corresponds to the [BathroomsFull field in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsFull+Field)."
  def number_of_full_bathrooms(%__MODULE__{} = thing, value) do
    %{thing | number_of_full_bathrooms: value}
  end

  @doc "Sets the Schema.org `numberOfPartialBathrooms` property.\n\nNumber of partial bathrooms - The total number of half and ¼ bathrooms in an [[Accommodation]]. This corresponds to the [BathroomsPartial field in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsPartial+Field). "
  def number_of_partial_bathrooms(%__MODULE__{} = thing, value) do
    %{thing | number_of_partial_bathrooms: value}
  end

  @doc "Sets the Schema.org `numberOfRooms` property.\n\nThe number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.\nTypical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue."
  def number_of_rooms(%__MODULE__{} = thing, value) do
    %{thing | number_of_rooms: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `petsAllowed` property.\n\nIndicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value."
  def pets_allowed(%__MODULE__{} = thing, value) do
    %{thing | pets_allowed: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
