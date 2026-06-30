defmodule SchemaOrg.BroadcastFrequencySpecification do
  @moduledoc "The frequency in MHz and the modulation used for a particular BroadcastService."

  defstruct [
    :additional_type,
    :alternate_name,
    :broadcast_frequency_value,
    :broadcast_signal_modulation,
    :broadcast_sub_channel,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    broadcast_frequency_value: "broadcastFrequencyValue",
    broadcast_signal_modulation: "broadcastSignalModulation",
    broadcast_sub_channel: "broadcastSubChannel",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "BroadcastFrequencySpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.BroadcastFrequencySpecification` struct."
  def new, do: %__MODULE__{}
end
