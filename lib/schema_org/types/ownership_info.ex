defmodule SchemaOrg.OwnershipInfo do
  @moduledoc "A structured value providing information about when a certain organization or person owned a certain product."

  defstruct [
    :acquired_from,
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owned_from,
    :owned_through,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :type_of_good,
    :url
  ]

  @json_keys %{
    acquired_from: "acquiredFrom",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owned_from: "ownedFrom",
    owned_through: "ownedThrough",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    type_of_good: "typeOfGood",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "OwnershipInfo", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.OwnershipInfo` struct."
  def new, do: %__MODULE__{}
end
