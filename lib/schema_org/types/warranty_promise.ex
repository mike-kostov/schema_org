defmodule SchemaOrg.WarrantyPromise do
  @moduledoc "A structured value representing the duration and scope of services that will be provided to a customer free of charge in case of a defect or malfunction of a product."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :duration_of_warranty,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :warranty_scope
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    duration_of_warranty: "durationOfWarranty",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    warranty_scope: "warrantyScope"
  }

  @doc false
  def __schema_org__, do: %{type: "WarrantyPromise", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.WarrantyPromise` struct."
  def new, do: %__MODULE__{}
end
