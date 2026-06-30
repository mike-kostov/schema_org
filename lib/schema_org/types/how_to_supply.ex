defmodule SchemaOrg.HowToSupply do
  @moduledoc "A supply consumed when performing the instructions for how to achieve a result."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :estimated_cost,
    :identifier,
    :image,
    :item,
    :main_entity_of_page,
    :name,
    :next_item,
    :owner,
    :position,
    :potential_action,
    :previous_item,
    :required_quantity,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    estimated_cost: "estimatedCost",
    identifier: "identifier",
    image: "image",
    item: "item",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    next_item: "nextItem",
    owner: "owner",
    position: "position",
    potential_action: "potentialAction",
    previous_item: "previousItem",
    required_quantity: "requiredQuantity",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "HowToSupply", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.HowToSupply` struct."
  def new, do: %__MODULE__{}
end
