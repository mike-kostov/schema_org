defmodule SchemaOrg.InteractionCounter do
  @moduledoc "A summary of how users have interacted with this CreativeWork. In most cases, authors will use a subtype to specify the specific type of interaction."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :end_time,
    :identifier,
    :image,
    :interaction_service,
    :interaction_type,
    :location,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :start_time,
    :subject_of,
    :url,
    :user_interaction_count
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_time: "endTime",
    identifier: "identifier",
    image: "image",
    interaction_service: "interactionService",
    interaction_type: "interactionType",
    location: "location",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    start_time: "startTime",
    subject_of: "subjectOf",
    url: "url",
    user_interaction_count: "userInteractionCount"
  }

  @doc false
  def __schema_org__, do: %{type: "InteractionCounter", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.InteractionCounter` struct."
  def new, do: %__MODULE__{}
end
