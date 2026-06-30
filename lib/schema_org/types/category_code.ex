defmodule SchemaOrg.CategoryCode do
  @moduledoc "A Category Code."

  defstruct [
    :about,
    :additional_type,
    :alternate_name,
    :code_value,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :in_code_set,
    :in_defined_term_set,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :term_code,
    :url
  ]

  @json_keys %{
    about: "about",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    code_value: "codeValue",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    in_code_set: "inCodeSet",
    in_defined_term_set: "inDefinedTermSet",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    term_code: "termCode",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "CategoryCode", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.CategoryCode` struct."
  def new, do: %__MODULE__{}
end
