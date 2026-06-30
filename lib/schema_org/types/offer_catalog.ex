defmodule SchemaOrg.OfferCatalog do
  @moduledoc "An OfferCatalog is an ItemList that contains related Offers and/or further OfferCatalogs that are offeredBy the same provider."

  defstruct [
    :additional_type,
    :aggregate_element,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :item_list_element,
    :item_list_order,
    :main_entity_of_page,
    :name,
    :number_of_items,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    aggregate_element: "aggregateElement",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    item_list_element: "itemListElement",
    item_list_order: "itemListOrder",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    number_of_items: "numberOfItems",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "OfferCatalog", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.OfferCatalog` struct."
  def new, do: %__MODULE__{}
end
