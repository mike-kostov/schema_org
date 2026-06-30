defmodule SchemaOrg.TrackAction do
  @moduledoc "An agent tracks an object for updates.\\n\\nRelated actions:\\n\\n* `FollowAction`: Unlike FollowAction, TrackAction refers to the interest on the location of innanimates objects.\\n* `SubscribeAction`: Unlike SubscribeAction, TrackAction refers to  the interest on the location of innanimate objects."

  defstruct [
    :action_process,
    :action_status,
    :additional_type,
    :agent,
    :alternate_name,
    :delivery_method,
    :description,
    :disambiguating_description,
    :end_time,
    :error,
    :identifier,
    :image,
    :instrument,
    :location,
    :main_entity_of_page,
    :name,
    :object,
    :owner,
    :participant,
    :potential_action,
    :provider,
    :result,
    :same_as,
    :start_time,
    :subject_of,
    :target,
    :url
  ]

  @json_keys %{
    action_process: "actionProcess",
    action_status: "actionStatus",
    additional_type: "additionalType",
    agent: "agent",
    alternate_name: "alternateName",
    delivery_method: "deliveryMethod",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_time: "endTime",
    error: "error",
    identifier: "identifier",
    image: "image",
    instrument: "instrument",
    location: "location",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    object: "object",
    owner: "owner",
    participant: "participant",
    potential_action: "potentialAction",
    provider: "provider",
    result: "result",
    same_as: "sameAs",
    start_time: "startTime",
    subject_of: "subjectOf",
    target: "target",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "TrackAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TrackAction` struct."
  def new, do: %__MODULE__{}
end
