defmodule SchemaOrg.TelevisionChannel do
  @moduledoc "A unique instance of a television BroadcastService on a CableOrSatelliteService lineup."

  defstruct [
    :additional_type,
    :alternate_name,
    :broadcast_channel_id,
    :broadcast_frequency,
    :broadcast_service_tier,
    :description,
    :disambiguating_description,
    :genre,
    :identifier,
    :image,
    :in_broadcast_lineup,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :provides_broadcast_service,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    broadcast_channel_id: "broadcastChannelId",
    broadcast_frequency: "broadcastFrequency",
    broadcast_service_tier: "broadcastServiceTier",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    genre: "genre",
    identifier: "identifier",
    image: "image",
    in_broadcast_lineup: "inBroadcastLineup",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    provides_broadcast_service: "providesBroadcastService",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "TelevisionChannel", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TelevisionChannel` struct."
  def new, do: %__MODULE__{}
end
