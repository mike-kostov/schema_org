defmodule SchemaOrg.MedicalRiskCalculator do
  @moduledoc "A complex mathematical calculation requiring an online calculator, used to assess prognosis. Note: use the url property of Thing to record any URLs for online calculators."

  defstruct [
    :additional_type,
    :alternate_name,
    :code,
    :description,
    :disambiguating_description,
    :estimates_risk_of,
    :funding,
    :guideline,
    :identifier,
    :image,
    :included_risk_factor,
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :name,
    :owner,
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
    code: "code",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    estimates_risk_of: "estimatesRiskOf",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
    included_risk_factor: "includedRiskFactor",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    recognizing_authority: "recognizingAuthority",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    study: "study",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MedicalRiskCalculator", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalRiskCalculator` struct."
  def new, do: %__MODULE__{}
end
