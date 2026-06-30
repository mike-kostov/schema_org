defmodule SchemaOrg.MedicalGuidelineContraindication do
  @moduledoc "A guideline contraindication that designates a process as harmful and where quality of the data supporting the contraindication is sound."

  defstruct [
    :additional_type,
    :alternate_name,
    :code,
    :description,
    :disambiguating_description,
    :evidence_level,
    :evidence_origin,
    :funding,
    :guideline,
    :guideline_date,
    :guideline_subject,
    :identifier,
    :image,
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
    evidence_level: "evidenceLevel",
    evidence_origin: "evidenceOrigin",
    funding: "funding",
    guideline: "guideline",
    guideline_date: "guidelineDate",
    guideline_subject: "guidelineSubject",
    identifier: "identifier",
    image: "image",
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
  def __schema_org__, do: %{type: "MedicalGuidelineContraindication", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalGuidelineContraindication` struct."
  def new, do: %__MODULE__{}
end
