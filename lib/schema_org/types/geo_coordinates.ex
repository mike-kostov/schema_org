defmodule SchemaOrg.GeoCoordinates do
  @moduledoc "The geographic coordinates of a place or event."

  defstruct [
    :additional_type,
    :address,
    :address_country,
    :alternate_name,
    :description,
    :disambiguating_description,
    :elevation,
    :identifier,
    :image,
    :latitude,
    :longitude,
    :main_entity_of_page,
    :name,
    :owner,
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
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    elevation: "elevation",
    identifier: "identifier",
    image: "image",
    latitude: "latitude",
    longitude: "longitude",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    postal_code: "postalCode",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "GeoCoordinates", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.GeoCoordinates` struct."
  def new, do: %__MODULE__{}
end
