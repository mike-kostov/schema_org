defmodule SchemaOrg.MediaSubscription do
  @moduledoc "A subscription which allows a user to access media including audio, video, books, etc."

  defstruct [
    :additional_type,
    :alternate_name,
    :authenticator,
    :description,
    :disambiguating_description,
    :expects_acceptance_of,
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
    authenticator: "authenticator",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    expects_acceptance_of: "expectsAcceptanceOf",
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
  def __schema_org__, do: %{type: "MediaSubscription", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MediaSubscription` struct."
  def new, do: %__MODULE__{}
end
