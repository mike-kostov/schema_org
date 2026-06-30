defmodule SchemaOrg.DrugStrength do
  @moduledoc "A specific strength in which a medical drug is available in a specific country."

  defstruct [
    :active_ingredient,
    :additional_type,
    :alternate_name,
    :available_in,
    :code,
    :description,
    :disambiguating_description,
    :funding,
    :guideline,
    :identifier,
    :image,
    :legal_status,
    :main_entity_of_page,
    :maximum_intake,
    :medicine_system,
    :name,
    :owner,
    :potential_action,
    :recognizing_authority,
    :relevant_specialty,
    :same_as,
    :strength_unit,
    :strength_value,
    :study,
    :subject_of,
    :url
  ]

  @json_keys %{
    active_ingredient: "activeIngredient",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    available_in: "availableIn",
    code: "code",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    maximum_intake: "maximumIntake",
    medicine_system: "medicineSystem",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    recognizing_authority: "recognizingAuthority",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    strength_unit: "strengthUnit",
    strength_value: "strengthValue",
    study: "study",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "DrugStrength", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DrugStrength` struct."
  def new, do: %__MODULE__{}
end
