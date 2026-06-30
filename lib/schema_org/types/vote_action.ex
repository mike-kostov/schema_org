defmodule SchemaOrg.VoteAction do
  @moduledoc "The act of expressing a preference from a fixed/finite/structured set of choices/options."

  defstruct [
    :action_option,
    :action_process,
    :action_status,
    :additional_type,
    :agent,
    :alternate_name,
    :candidate,
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
    :option,
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
    action_option: "actionOption",
    action_process: "actionProcess",
    action_status: "actionStatus",
    additional_type: "additionalType",
    agent: "agent",
    alternate_name: "alternateName",
    candidate: "candidate",
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
    option: "option",
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
  def __schema_org__, do: %{type: "VoteAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.VoteAction` struct."
  def new, do: %__MODULE__{}
end
