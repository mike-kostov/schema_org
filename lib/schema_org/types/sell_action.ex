defmodule SchemaOrg.SellAction do
  @moduledoc "The act of taking money from a buyer in exchange for goods or services rendered. An agent sells an object, product, or service to a buyer for a price. Reciprocal of BuyAction."

  defstruct [
    :action_process,
    :action_status,
    :additional_type,
    :agent,
    :alternate_name,
    :buyer,
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
    :price,
    :price_currency,
    :price_specification,
    :provider,
    :result,
    :same_as,
    :start_time,
    :subject_of,
    :target,
    :url,
    :warranty_promise
  ]

  @json_keys %{
    action_process: "actionProcess",
    action_status: "actionStatus",
    additional_type: "additionalType",
    agent: "agent",
    alternate_name: "alternateName",
    buyer: "buyer",
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
    price: "price",
    price_currency: "priceCurrency",
    price_specification: "priceSpecification",
    provider: "provider",
    result: "result",
    same_as: "sameAs",
    start_time: "startTime",
    subject_of: "subjectOf",
    target: "target",
    url: "url",
    warranty_promise: "warrantyPromise"
  }

  @doc false
  def __schema_org__, do: %{type: "SellAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.SellAction` struct."
  def new, do: %__MODULE__{}
end
