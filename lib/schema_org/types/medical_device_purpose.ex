defmodule SchemaOrg.MedicalDevicePurpose do
  @moduledoc "Categories of medical devices, organized by the purpose or intended use of the device."

  defstruct [
    :additional_type,
    :alternate_name,
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
    :superseded_by,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
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
    superseded_by: "supersededBy",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MedicalDevicePurpose", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalDevicePurpose` struct."
  def new, do: %__MODULE__{}
end
