defmodule SchemaOrg.DefinedTerm do
  @moduledoc "A word, name, acronym, phrase, etc. with a formal definition. Often used in the context of category or subject classification, glossaries or dictionaries, product or creative work types, etc. Use the name property for the term being defined, use termCode if the term has an alpha-numeric code allocated, use description to provide the definition of the term. Use the about property to specify what the term is about."

  defstruct [
    :about,
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
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
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
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
  def __schema_org__, do: %{type: "DefinedTerm", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DefinedTerm` struct."
  def new, do: %__MODULE__{}
end
