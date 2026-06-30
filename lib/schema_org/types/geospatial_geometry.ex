defmodule SchemaOrg.GeospatialGeometry do
  @moduledoc "(Eventually to be defined as) a supertype of GeoShape designed to accommodate definitions from Geo-Spatial best practices."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
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
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
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
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "GeospatialGeometry", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.GeospatialGeometry` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
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

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
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
