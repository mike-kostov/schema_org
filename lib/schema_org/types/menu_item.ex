defmodule SchemaOrg.MenuItem do
  @moduledoc "A food or drink item listed in a menu or menu section."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :menu_add_on,
    :name,
    :nutrition,
    :offers,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :suitable_for_diet,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    menu_add_on: "menuAddOn",
    name: "name",
    nutrition: "nutrition",
    offers: "offers",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    suitable_for_diet: "suitableForDiet",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MenuItem", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MenuItem` struct."
  def new, do: %__MODULE__{}
end
