defmodule SchemaOrg.Property do
  @moduledoc "A property, used to indicate attributes and relationships of some Thing; equivalent to rdf:Property."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :domain_includes,
    :identifier,
    :image,
    :inverse_of,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :range_includes,
    :same_as,
    :subject_of,
    :superseded_by,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    domain_includes: "domainIncludes",
    identifier: "identifier",
    image: "image",
    inverse_of: "inverseOf",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    range_includes: "rangeIncludes",
    same_as: "sameAs",
    subject_of: "subjectOf",
    superseded_by: "supersededBy",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Property", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Property` struct."
  def new, do: %__MODULE__{}
end
