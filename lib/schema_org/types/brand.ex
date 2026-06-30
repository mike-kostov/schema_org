defmodule SchemaOrg.Brand do
  @moduledoc "A brand is a name used by an organization or business person for labeling a product, product group, or similar."

  defstruct [
    :additional_type,
    :aggregate_rating,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :logo,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :review,
    :same_as,
    :slogan,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    aggregate_rating: "aggregateRating",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    logo: "logo",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    review: "review",
    same_as: "sameAs",
    slogan: "slogan",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Brand", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Brand` struct."
  def new, do: %__MODULE__{}
end
