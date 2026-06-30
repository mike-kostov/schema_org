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
end
