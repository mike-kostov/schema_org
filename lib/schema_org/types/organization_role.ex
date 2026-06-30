defmodule SchemaOrg.OrganizationRole do
  @moduledoc "A subclass of Role used to describe roles within organizations."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :end_date,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :named_position,
    :numbered_position,
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
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    named_position: "namedPosition",
    numbered_position: "numberedPosition",
    owner: "owner",
    potential_action: "potentialAction",
    role_name: "roleName",
    same_as: "sameAs",
    start_date: "startDate",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "OrganizationRole", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.OrganizationRole` struct."
  def new, do: %__MODULE__{}
end
