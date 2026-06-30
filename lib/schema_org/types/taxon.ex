defmodule SchemaOrg.Taxon do
  @moduledoc "A set of organisms asserted to represent a natural cohesive biological unit."

  defstruct [
    :additional_type,
    :alternate_name,
    :child_taxon,
    :description,
    :disambiguating_description,
    :has_defined_term,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :parent_taxon,
    :potential_action,
    :same_as,
    :subject_of,
    :taxon_rank,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    child_taxon: "childTaxon",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    has_defined_term: "hasDefinedTerm",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    parent_taxon: "parentTaxon",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    taxon_rank: "taxonRank",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Taxon", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Taxon` struct."
  def new, do: %__MODULE__{}
end
