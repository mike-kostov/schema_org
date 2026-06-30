defmodule SchemaOrg.EntryPoint do
  @moduledoc "An entry point, within some Web-based protocol."

  defstruct [
    :action_application,
    :action_platform,
    :additional_type,
    :alternate_name,
    :application,
    :content_type,
    :description,
    :disambiguating_description,
    :encoding_type,
    :http_method,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :url_template
  ]

  @json_keys %{
    action_application: "actionApplication",
    action_platform: "actionPlatform",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    application: "application",
    content_type: "contentType",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    encoding_type: "encodingType",
    http_method: "httpMethod",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    url_template: "urlTemplate"
  }

  @doc false
  def __schema_org__, do: %{type: "EntryPoint", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.EntryPoint` struct."
  def new, do: %__MODULE__{}
end
