defmodule SchemaOrg.MoveAction do
  @moduledoc "The act of an agent relocating to a place.\\n\\nRelated actions:\\n\\n* [[TransferAction]]: Unlike TransferAction, the subject of the move is a living Person or Organization rather than an inanimate object."

  defstruct [
    :action_process,
    :action_status,
    :additional_type,
    :agent,
    :alternate_name,
    :description,
    :disambiguating_description,
    :end_time,
    :error,
    :from_location,
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
    :to_location,
    :url
  ]

  @json_keys %{
    action_process: "actionProcess",
    action_status: "actionStatus",
    additional_type: "additionalType",
    agent: "agent",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_time: "endTime",
    error: "error",
    from_location: "fromLocation",
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
    to_location: "toLocation",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MoveAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MoveAction` struct."
  def new, do: %__MODULE__{}
end
