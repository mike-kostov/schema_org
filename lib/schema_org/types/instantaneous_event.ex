defmodule SchemaOrg.InstantaneousEvent do
  @moduledoc "An event with no duration, like for instance a computer log entry."

  defstruct [
    :additional_type,
    :alternate_name,
    :data,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :source,
    :subject_of,
    :timestamp,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    data: "data",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    source: "source",
    subject_of: "subjectOf",
    timestamp: "timestamp",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "InstantaneousEvent", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.InstantaneousEvent` struct."
  def new, do: %__MODULE__{}
end
