defmodule SchemaOrg.BoatTerminal do
  @moduledoc "A terminal for boats, ships, and other water vessels."

  defstruct [
    :additional_property,
    :additional_type,
    :address,
    :aggregate_rating,
    :alternate_name,
    :amenity_feature,
    :branch_code,
    :contained_in,
    :contained_in_place,
    :contains_place,
    :description,
    :disambiguating_description,
    :event,
    :events,
    :fax_number,
    :geo,
    :geo_contains,
    :geo_covered_by,
    :geo_covers,
    :geo_crosses,
    :geo_disjoint,
    :geo_equals,
    :geo_intersects,
    :geo_overlaps,
    :geo_touches,
    :geo_within,
    :global_location_number,
    :has_certification,
    :has_drive_through_service,
    :has_gs1_digital_link,
    :has_map,
    :identifier,
    :image,
    :is_accessible_for_free,
    :isic_v4,
    :keywords,
    :latitude,
    :logo,
    :longitude,
    :main_entity_of_page,
    :map,
    :maps,
    :maximum_attendee_capacity,
    :name,
    :opening_hours,
    :opening_hours_specification,
    :owner,
    :photo,
    :photos,
    :potential_action,
    :public_access,
    :review,
    :reviews,
    :same_as,
    :slogan,
    :smoking_allowed,
    :special_opening_hours_specification,
    :subject_of,
    :telephone,
    :tour_booking_page,
    :url
  ]

  @json_keys %{
    additional_property: "additionalProperty",
    additional_type: "additionalType",
    address: "address",
    aggregate_rating: "aggregateRating",
    alternate_name: "alternateName",
    amenity_feature: "amenityFeature",
    branch_code: "branchCode",
    contained_in: "containedIn",
    contained_in_place: "containedInPlace",
    contains_place: "containsPlace",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    event: "event",
    events: "events",
    fax_number: "faxNumber",
    geo: "geo",
    geo_contains: "geoContains",
    geo_covered_by: "geoCoveredBy",
    geo_covers: "geoCovers",
    geo_crosses: "geoCrosses",
    geo_disjoint: "geoDisjoint",
    geo_equals: "geoEquals",
    geo_intersects: "geoIntersects",
    geo_overlaps: "geoOverlaps",
    geo_touches: "geoTouches",
    geo_within: "geoWithin",
    global_location_number: "globalLocationNumber",
    has_certification: "hasCertification",
    has_drive_through_service: "hasDriveThroughService",
    has_gs1_digital_link: "hasGS1DigitalLink",
    has_map: "hasMap",
    identifier: "identifier",
    image: "image",
    is_accessible_for_free: "isAccessibleForFree",
    isic_v4: "isicV4",
    keywords: "keywords",
    latitude: "latitude",
    logo: "logo",
    longitude: "longitude",
    main_entity_of_page: "mainEntityOfPage",
    map: "map",
    maps: "maps",
    maximum_attendee_capacity: "maximumAttendeeCapacity",
    name: "name",
    opening_hours: "openingHours",
    opening_hours_specification: "openingHoursSpecification",
    owner: "owner",
    photo: "photo",
    photos: "photos",
    potential_action: "potentialAction",
    public_access: "publicAccess",
    review: "review",
    reviews: "reviews",
    same_as: "sameAs",
    slogan: "slogan",
    smoking_allowed: "smokingAllowed",
    special_opening_hours_specification: "specialOpeningHoursSpecification",
    subject_of: "subjectOf",
    telephone: "telephone",
    tour_booking_page: "tourBookingPage",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "BoatTerminal", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.BoatTerminal` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalProperty` property.\n\nA property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.\n"
  def additional_property(%__MODULE__{} = thing, value) do
    %{thing | additional_property: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `address` property.\n\nPhysical address of the item."
  def address(%__MODULE__{} = thing, value) do
    %{thing | address: value}
  end

  @doc "Sets the Schema.org `aggregateRating` property.\n\nThe overall rating, based on a collection of reviews or ratings, of the item."
  def aggregate_rating(%__MODULE__{} = thing, value) do
    %{thing | aggregate_rating: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `amenityFeature` property.\n\nAn amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs."
  def amenity_feature(%__MODULE__{} = thing, value) do
    %{thing | amenity_feature: value}
  end

  @doc "Sets the Schema.org `branchCode` property.\n\nA short textual code (also called \"store code\") that uniquely identifies a place of business. The code is typically assigned by the parentOrganization and used in structured URLs.\\n\\nFor example, in the URL http://www.starbucks.co.uk/store-locator/etc/detail/3047 the code \"3047\" is a branchCode for a particular branch.\n      "
  def branch_code(%__MODULE__{} = thing, value) do
    %{thing | branch_code: value}
  end

  @doc "Sets the Schema.org `containedIn` property.\n\nThe basic containment relation between a place and one that contains it."
  def contained_in(%__MODULE__{} = thing, value) do
    %{thing | contained_in: value}
  end

  @doc "Sets the Schema.org `containedInPlace` property.\n\nThe basic containment relation between a place and one that contains it."
  def contained_in_place(%__MODULE__{} = thing, value) do
    %{thing | contained_in_place: value}
  end

  @doc "Sets the Schema.org `containsPlace` property.\n\nThe basic containment relation between a place and another that it contains."
  def contains_place(%__MODULE__{} = thing, value) do
    %{thing | contains_place: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `event` property.\n\nUpcoming or past event associated with this place, organization, or action."
  def event(%__MODULE__{} = thing, value) do
    %{thing | event: value}
  end

  @doc "Sets the Schema.org `events` property.\n\nUpcoming or past events associated with this place or organization."
  def events(%__MODULE__{} = thing, value) do
    %{thing | events: value}
  end

  @doc "Sets the Schema.org `faxNumber` property.\n\nThe fax number."
  def fax_number(%__MODULE__{} = thing, value) do
    %{thing | fax_number: value}
  end

  @doc "Sets the Schema.org `geo` property.\n\nThe geo coordinates of the place."
  def geo(%__MODULE__{} = thing, value) do
    %{thing | geo: value}
  end

  @doc "Sets the Schema.org `geoContains` property.\n\nRepresents a relationship between two geometries (or the places they represent), relating a containing geometry to a contained geometry. \"a contains b iff no points of b lie in the exterior of a, and at least one point of the interior of b lies in the interior of a\". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."
  def geo_contains(%__MODULE__{} = thing, value) do
    %{thing | geo_contains: value}
  end

  @doc "Sets the Schema.org `geoCoveredBy` property.\n\nRepresents a relationship between two geometries (or the places they represent), relating a geometry to another that covers it. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."
  def geo_covered_by(%__MODULE__{} = thing, value) do
    %{thing | geo_covered_by: value}
  end

  @doc "Sets the Schema.org `geoCovers` property.\n\nRepresents a relationship between two geometries (or the places they represent), relating a covering geometry to a covered geometry. \"Every point of b is a point of (the interior or boundary of) a\". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."
  def geo_covers(%__MODULE__{} = thing, value) do
    %{thing | geo_covers: value}
  end

  @doc "Sets the Schema.org `geoCrosses` property.\n\nRepresents a relationship between two geometries (or the places they represent), relating a geometry to another that crosses it: \"a crosses b: they have some but not all interior points in common, and the dimension of the intersection is less than that of at least one of them\". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."
  def geo_crosses(%__MODULE__{} = thing, value) do
    %{thing | geo_crosses: value}
  end

  @doc "Sets the Schema.org `geoDisjoint` property.\n\nRepresents spatial relations in which two geometries (or the places they represent) are topologically disjoint: \"they have no point in common. They form a set of disconnected geometries.\" (A symmetric relationship, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)"
  def geo_disjoint(%__MODULE__{} = thing, value) do
    %{thing | geo_disjoint: value}
  end

  @doc "Sets the Schema.org `geoEquals` property.\n\nRepresents spatial relations in which two geometries (or the places they represent) are topologically equal, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM). \"Two geometries are topologically equal if their interiors intersect and no part of the interior or boundary of one geometry intersects the exterior of the other\" (a symmetric relationship)."
  def geo_equals(%__MODULE__{} = thing, value) do
    %{thing | geo_equals: value}
  end

  @doc "Sets the Schema.org `geoIntersects` property.\n\nRepresents spatial relations in which two geometries (or the places they represent) have at least one point in common. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."
  def geo_intersects(%__MODULE__{} = thing, value) do
    %{thing | geo_intersects: value}
  end

  @doc "Sets the Schema.org `geoOverlaps` property.\n\nRepresents a relationship between two geometries (or the places they represent), relating a geometry to another that geospatially overlaps it, i.e. they have some but not all points in common. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."
  def geo_overlaps(%__MODULE__{} = thing, value) do
    %{thing | geo_overlaps: value}
  end

  @doc "Sets the Schema.org `geoTouches` property.\n\nRepresents spatial relations in which two geometries (or the places they represent) touch: \"they have at least one boundary point in common, but no interior points.\" (A symmetric relationship, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)"
  def geo_touches(%__MODULE__{} = thing, value) do
    %{thing | geo_touches: value}
  end

  @doc "Sets the Schema.org `geoWithin` property.\n\nRepresents a relationship between two geometries (or the places they represent), relating a geometry to one that contains it, i.e. it is inside (i.e. within) its interior. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."
  def geo_within(%__MODULE__{} = thing, value) do
    %{thing | geo_within: value}
  end

  @doc "Sets the Schema.org `globalLocationNumber` property.\n\nThe [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations."
  def global_location_number(%__MODULE__{} = thing, value) do
    %{thing | global_location_number: value}
  end

  @doc "Sets the Schema.org `hasCertification` property.\n\nCertification information about a product, organization, service, place, or person."
  def has_certification(%__MODULE__{} = thing, value) do
    %{thing | has_certification: value}
  end

  @doc "Sets the Schema.org `hasDriveThroughService` property.\n\nIndicates whether some facility (e.g. [[FoodEstablishment]], [[CovidTestingFacility]]) offers a service that can be used by driving through in a car. In the case of [[CovidTestingFacility]] such facilities could potentially help with social distancing from other potentially-infected users."
  def has_drive_through_service(%__MODULE__{} = thing, value) do
    %{thing | has_drive_through_service: value}
  end

  @doc "Sets the Schema.org `hasGS1DigitalLink` property.\n\nThe <a href=\"https://www.gs1.org/standards/gs1-digital-link\">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly."
  def has_gs1_digital_link(%__MODULE__{} = thing, value) do
    %{thing | has_gs1_digital_link: value}
  end

  @doc "Sets the Schema.org `hasMap` property.\n\nA URL to a map of the place."
  def has_map(%__MODULE__{} = thing, value) do
    %{thing | has_map: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `isAccessibleForFree` property.\n\nA flag to signal that the item, event, or place is accessible for free."
  def is_accessible_for_free(%__MODULE__{} = thing, value) do
    %{thing | is_accessible_for_free: value}
  end

  @doc "Sets the Schema.org `isicV4` property.\n\nThe International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place."
  def isic_v4(%__MODULE__{} = thing, value) do
    %{thing | isic_v4: value}
  end

  @doc "Sets the Schema.org `keywords` property.\n\nKeywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."
  def keywords(%__MODULE__{} = thing, value) do
    %{thing | keywords: value}
  end

  @doc "Sets the Schema.org `latitude` property.\n\nThe latitude of a location. For example ```37.42242``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System))."
  def latitude(%__MODULE__{} = thing, value) do
    %{thing | latitude: value}
  end

  @doc "Sets the Schema.org `logo` property.\n\nAn associated logo."
  def logo(%__MODULE__{} = thing, value) do
    %{thing | logo: value}
  end

  @doc "Sets the Schema.org `longitude` property.\n\nThe longitude of a location. For example ```-122.08585``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System))."
  def longitude(%__MODULE__{} = thing, value) do
    %{thing | longitude: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `map` property.\n\nA URL to a map of the place."
  def map(%__MODULE__{} = thing, value) do
    %{thing | map: value}
  end

  @doc "Sets the Schema.org `maps` property.\n\nA URL to a map of the place."
  def maps(%__MODULE__{} = thing, value) do
    %{thing | maps: value}
  end

  @doc "Sets the Schema.org `maximumAttendeeCapacity` property.\n\nThe total number of individuals that may attend an event or venue."
  def maximum_attendee_capacity(%__MODULE__{} = thing, value) do
    %{thing | maximum_attendee_capacity: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `openingHours` property.\n\nThe general opening hours for a business. Opening hours can be specified as a weekly time range, starting with days, then times per day. Multiple days can be listed with commas ',' separating each day. Day or time ranges are specified using a hyphen '-'.\\n\\n* Days are specified using the following two-letter combinations: ```Mo```, ```Tu```, ```We```, ```Th```, ```Fr```, ```Sa```, ```Su```.\\n* Times are specified using 24:00 format. For example, 3pm is specified as ```15:00```, 10am as ```10:00```. \\n* Here is an example: <code>&lt;time itemprop=\"openingHours\" datetime=&quot;Tu,Th 16:00-20:00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.\\n* If a business is open 7 days a week, then it can be specified as <code>&lt;time itemprop=&quot;openingHours&quot; datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all day&lt;/time&gt;</code>."
  def opening_hours(%__MODULE__{} = thing, value) do
    %{thing | opening_hours: value}
  end

  @doc "Sets the Schema.org `openingHoursSpecification` property.\n\nThe opening hours of a certain place."
  def opening_hours_specification(%__MODULE__{} = thing, value) do
    %{thing | opening_hours_specification: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `photo` property.\n\nA photograph of this place."
  def photo(%__MODULE__{} = thing, value) do
    %{thing | photo: value}
  end

  @doc "Sets the Schema.org `photos` property.\n\nPhotographs of this place."
  def photos(%__MODULE__{} = thing, value) do
    %{thing | photos: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `publicAccess` property.\n\nA flag to signal that the [[Place]] is open to public visitors.  If this property is omitted there is no assumed default boolean value."
  def public_access(%__MODULE__{} = thing, value) do
    %{thing | public_access: value}
  end

  @doc "Sets the Schema.org `review` property.\n\nA review of the item."
  def review(%__MODULE__{} = thing, value) do
    %{thing | review: value}
  end

  @doc "Sets the Schema.org `reviews` property.\n\nReview of the item."
  def reviews(%__MODULE__{} = thing, value) do
    %{thing | reviews: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `slogan` property.\n\nA slogan or motto associated with the item."
  def slogan(%__MODULE__{} = thing, value) do
    %{thing | slogan: value}
  end

  @doc "Sets the Schema.org `smokingAllowed` property.\n\nIndicates whether it is allowed to smoke in the place, e.g. in the restaurant, hotel or hotel room."
  def smoking_allowed(%__MODULE__{} = thing, value) do
    %{thing | smoking_allowed: value}
  end

  @doc "Sets the Schema.org `specialOpeningHoursSpecification` property.\n\nThe special opening hours of a certain place.\\n\\nUse this to explicitly override general opening hours brought in scope by [[openingHoursSpecification]] or [[openingHours]].\n      "
  def special_opening_hours_specification(%__MODULE__{} = thing, value) do
    %{thing | special_opening_hours_specification: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `telephone` property.\n\nThe telephone number."
  def telephone(%__MODULE__{} = thing, value) do
    %{thing | telephone: value}
  end

  @doc "Sets the Schema.org `tourBookingPage` property.\n\nA page providing information on how to book a tour of some [[Place]], such as an [[Accommodation]] or [[ApartmentComplex]] in a real estate setting, as well as other kinds of tours as appropriate."
  def tour_booking_page(%__MODULE__{} = thing, value) do
    %{thing | tour_booking_page: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
