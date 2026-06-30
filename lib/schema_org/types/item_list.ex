defmodule SchemaOrg.ItemList do
  @moduledoc "A list of items of any sort&#x2014;for example, Top 10 Movies About Weathermen, or Top 100 Party Songs. Not to be confused with HTML lists, which are often used only for formatting."

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
  def __schema_org__, do: %{type: "ItemList", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ItemList` struct."
  def new, do: %__MODULE__{}
end
