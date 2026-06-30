defmodule SchemaOrg.InformAction do
  @moduledoc "The act of notifying someone of information pertinent to them, with no expectation of a response."

  defstruct [
    :about,
    :action_process,
    :action_status,
    :additional_type,
    :agent,
    :alternate_name,
    :description,
    :disambiguating_description,
    :end_time,
    :error,
    :event,
    :identifier,
    :image,
    :in_language,
    :instrument,
    :language,
    :location,
    :main_entity_of_page,
    :name,
    :object,
    :owner,
    :participant,
    :potential_action,
    :provider,
    :recipient,
    :result,
    :same_as,
    :start_time,
    :subject_of,
    :target,
    :url
  ]

  @json_keys %{
    about: "about",
    action_process: "actionProcess",
    action_status: "actionStatus",
    additional_type: "additionalType",
    agent: "agent",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_time: "endTime",
    error: "error",
    event: "event",
    identifier: "identifier",
    image: "image",
    in_language: "inLanguage",
    instrument: "instrument",
    language: "language",
    location: "location",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    object: "object",
    owner: "owner",
    participant: "participant",
    potential_action: "potentialAction",
    provider: "provider",
    recipient: "recipient",
    result: "result",
    same_as: "sameAs",
    start_time: "startTime",
    subject_of: "subjectOf",
    target: "target",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "InformAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.InformAction` struct."
  def new, do: %__MODULE__{}
end
