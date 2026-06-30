defmodule SchemaOrg.ReplaceAction do
  @moduledoc "The act of editing a recipient by replacing an old object with a new object."

  defstruct [
    :action_process,
    :action_status,
    :additional_type,
    :agent,
    :alternate_name,
    :collection,
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
    :replacee,
    :replacer,
    :result,
    :same_as,
    :start_time,
    :subject_of,
    :target,
    :target_collection,
    :url
  ]

  @json_keys %{
    action_process: "actionProcess",
    action_status: "actionStatus",
    additional_type: "additionalType",
    agent: "agent",
    alternate_name: "alternateName",
    collection: "collection",
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
    replacee: "replacee",
    replacer: "replacer",
    result: "result",
    same_as: "sameAs",
    start_time: "startTime",
    subject_of: "subjectOf",
    target: "target",
    target_collection: "targetCollection",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ReplaceAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ReplaceAction` struct."
  def new, do: %__MODULE__{}
end
