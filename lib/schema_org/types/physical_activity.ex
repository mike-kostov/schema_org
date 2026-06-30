defmodule SchemaOrg.PhysicalActivity do
  @moduledoc "Any bodily activity that enhances or maintains physical fitness and overall health and wellness. Includes activity that is part of daily living and routine, structured exercise, and exercise prescribed as part of a medical treatment or recovery plan."

  defstruct [
    :additional_type,
    :alternate_name,
    :associated_anatomy,
    :category,
    :code,
    :description,
    :disambiguating_description,
    :epidemiology,
    :funding,
    :guideline,
    :identifier,
    :image,
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :name,
    :owner,
    :pathophysiology,
    :potential_action,
    :recognizing_authority,
    :relevant_specialty,
    :same_as,
    :study,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    associated_anatomy: "associatedAnatomy",
    category: "category",
    code: "code",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    epidemiology: "epidemiology",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    name: "name",
    owner: "owner",
    pathophysiology: "pathophysiology",
    potential_action: "potentialAction",
    recognizing_authority: "recognizingAuthority",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    study: "study",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "PhysicalActivity", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.PhysicalActivity` struct."
  def new, do: %__MODULE__{}
end
