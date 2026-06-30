defmodule SchemaOrg.EventAttendanceModeEnumeration do
  @moduledoc "An EventAttendanceModeEnumeration value is one of potentially several modes of organising an event, relating to whether it is online or offline."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :superseded_by,
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
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    superseded_by: "supersededBy",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "EventAttendanceModeEnumeration", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.EventAttendanceModeEnumeration` struct."
  def new, do: %__MODULE__{}
end
