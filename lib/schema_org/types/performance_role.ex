defmodule SchemaOrg.PerformanceRole do
  @moduledoc "A PerformanceRole is a Role that some entity places with regard to a theatrical performance, e.g. in a Movie, TVSeries etc."

  defstruct [
    :additional_type,
    :alternate_name,
    :character_name,
    :description,
    :disambiguating_description,
    :end_date,
    :identifier,
    :image,
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
    character_name: "characterName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_date: "endDate",
    identifier: "identifier",
    image: "image",
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
  def __schema_org__, do: %{type: "PerformanceRole", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.PerformanceRole` struct."
  def new, do: %__MODULE__{}
end
