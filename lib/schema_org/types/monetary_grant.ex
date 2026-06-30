defmodule SchemaOrg.MonetaryGrant do
  @moduledoc "A monetary grant."

  defstruct [
    :additional_type,
    :alternate_name,
    :amount,
    :description,
    :disambiguating_description,
    :funded_item,
    :funder,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :sponsor,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    amount: "amount",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    funded_item: "fundedItem",
    funder: "funder",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    sponsor: "sponsor",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MonetaryGrant", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MonetaryGrant` struct."
  def new, do: %__MODULE__{}
end
