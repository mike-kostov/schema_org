defmodule SchemaOrg.BreadcrumbList do
  @moduledoc "A BreadcrumbList is an ItemList consisting of a chain of linked Web pages, typically described using at least their URL and their name, and typically ending with the current page.\\n\\nThe [[position]] property is used to reconstruct the order of the items in a BreadcrumbList. The convention is that a breadcrumb list has an [[itemListOrder]] of [[ItemListOrderAscending]] (lower values listed first), and that the first items in this list correspond to the \"top\" or beginning of the breadcrumb trail, e.g. with a site or section homepage. The specific values of 'position' are not assigned meaning for a BreadcrumbList, but they should be integers, e.g. beginning with '1' for the first item in the list.\n      "

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
  def __schema_org__, do: %{type: "BreadcrumbList", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.BreadcrumbList` struct."
  def new, do: %__MODULE__{}
end
