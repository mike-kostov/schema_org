defmodule SchemaOrg.DigitalDocumentPermission do
  @moduledoc "A permission for a particular person or group to access a particular file."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :grantee,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :permission_type,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    grantee: "grantee",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    permission_type: "permissionType",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "DigitalDocumentPermission", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DigitalDocumentPermission` struct."
  def new, do: %__MODULE__{}
end
