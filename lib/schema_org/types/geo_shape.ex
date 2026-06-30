defmodule SchemaOrg.GeoShape do
  @moduledoc "The geographic shape of a place. A GeoShape can be described using several properties whose values are based on latitude/longitude pairs. Either whitespace or commas can be used to separate latitude and longitude; whitespace should be used when writing a list of several such points."

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
  def __schema_org__, do: %{type: "GeoShape", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.GeoShape` struct."
  def new, do: %__MODULE__{}
end
