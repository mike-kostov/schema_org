defmodule SchemaOrg.RsvpAction do
  @moduledoc "The act of notifying an event organizer as to whether you expect to attend the event."

  defstruct [
    :about,
    :action_process,
    :action_status,
    :additional_number_of_guests,
    :additional_type,
    :agent,
    :alternate_name,
    :comment,
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
    :rsvp_response,
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
    additional_number_of_guests: "additionalNumberOfGuests",
    additional_type: "additionalType",
    agent: "agent",
    alternate_name: "alternateName",
    comment: "comment",
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
    rsvp_response: "rsvpResponse",
    same_as: "sameAs",
    start_time: "startTime",
    subject_of: "subjectOf",
    target: "target",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "RsvpAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.RsvpAction` struct."
  def new, do: %__MODULE__{}
end
