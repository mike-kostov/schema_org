defmodule SchemaOrg.PerformAction do
  @moduledoc "The act of participating in performance arts."

  defstruct [
    :action_process,
    :action_status,
    :additional_type,
    :agent,
    :alternate_name,
    :audience,
    :description,
    :disambiguating_description,
    :end_time,
    :entertainment_business,
    :error,
    :event,
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
    audience: "audience",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_time: "endTime",
    entertainment_business: "entertainmentBusiness",
    error: "error",
    event: "event",
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
  def __schema_org__, do: %{type: "PerformAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.PerformAction` struct."
  def new, do: %__MODULE__{}
end
