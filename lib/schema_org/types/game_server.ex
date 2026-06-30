defmodule SchemaOrg.GameServer do
  @moduledoc "Server that provides game interaction in a multiplayer game."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :game,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :players_online,
    :potential_action,
    :same_as,
    :server_status,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    game: "game",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    players_online: "playersOnline",
    potential_action: "potentialAction",
    same_as: "sameAs",
    server_status: "serverStatus",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "GameServer", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.GameServer` struct."
  def new, do: %__MODULE__{}
end
