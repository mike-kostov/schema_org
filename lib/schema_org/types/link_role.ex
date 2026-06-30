defmodule SchemaOrg.LinkRole do
  @moduledoc "A Role that represents a Web link, e.g. as expressed via the 'url' property. Its linkRelationship property can indicate URL-based and plain textual link types, e.g. those in IANA link registry or others such as 'amphtml'. This structure provides a placeholder where details from HTML's link element can be represented outside of HTML, e.g. in JSON-LD feeds."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :end_date,
    :identifier,
    :image,
    :in_language,
    :link_relationship,
    :main_entity_of_page,
    :name,
    :named_position,
    :owner,
    :potential_action,
    :role_name,
    :same_as,
    :start_date,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_date: "endDate",
    identifier: "identifier",
    image: "image",
    in_language: "inLanguage",
    link_relationship: "linkRelationship",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    named_position: "namedPosition",
    owner: "owner",
    potential_action: "potentialAction",
    role_name: "roleName",
    same_as: "sameAs",
    start_date: "startDate",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "LinkRole", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.LinkRole` struct."
  def new, do: %__MODULE__{}
end
