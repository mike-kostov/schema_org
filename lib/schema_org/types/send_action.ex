defmodule SchemaOrg.SendAction do
  @moduledoc "The act of physically/electronically dispatching an object for transfer from an origin to a destination. Related actions:\\n\\n* [[ReceiveAction]]: The reciprocal of SendAction.\\n* [[GiveAction]]: Unlike GiveAction, SendAction does not imply the transfer of ownership (e.g. I can send you my laptop, but I'm not necessarily giving it to you)."

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
    :recipient,
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
    delivery_method: "deliveryMethod",
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
    recipient: "recipient",
    result: "result",
    same_as: "sameAs",
    start_time: "startTime",
    subject_of: "subjectOf",
    target: "target",
    to_location: "toLocation",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "SendAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.SendAction` struct."
  def new, do: %__MODULE__{}
end
