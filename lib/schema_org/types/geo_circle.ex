defmodule SchemaOrg.GeoCircle do
  @moduledoc "A GeoCircle is a GeoShape representing a circular geographic area. As it is a GeoShape\n          it provides the simple textual property 'circle', but also allows the combination of postalCode alongside geoRadius.\n          The center of the circle can be indicated via the 'geoMidpoint' property, or more approximately using 'address', 'postalCode'.\n       "

  defstruct [
    :additional_type,
    :address,
    :address_country,
    :alternate_name,
    :box,
    :circle,
    :description,
    :disambiguating_description,
    :elevation,
    :geo_midpoint,
    :geo_radius,
    :identifier,
    :image,
    :line,
    :main_entity_of_page,
    :name,
    :owner,
    :polygon,
    :postal_code,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    address: "address",
    address_country: "addressCountry",
    alternate_name: "alternateName",
    box: "box",
    circle: "circle",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    elevation: "elevation",
    geo_midpoint: "geoMidpoint",
    geo_radius: "geoRadius",
    identifier: "identifier",
    image: "image",
    line: "line",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    polygon: "polygon",
    postal_code: "postalCode",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "GeoCircle", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.GeoCircle` struct."
  def new, do: %__MODULE__{}
end
