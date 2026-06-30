defmodule SchemaOrg.MedicalTrial do
  @moduledoc "A medical trial is a type of medical study that uses a scientific process to compare the safety and efficacy of medical therapies or medical procedures. In general, medical trials are controlled and subjects are allocated at random to the different treatment and/or control groups."

  defstruct [
    :additional_type,
    :alternate_name,
    :code,
    :description,
    :disambiguating_description,
    :funding,
    :guideline,
    :health_condition,
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
    :sponsor,
    :status,
    :study,
    :study_location,
    :study_subject,
    :subject_of,
    :trial_design,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    code: "code",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    funding: "funding",
    guideline: "guideline",
    health_condition: "healthCondition",
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
    sponsor: "sponsor",
    status: "status",
    study: "study",
    study_location: "studyLocation",
    study_subject: "studySubject",
    subject_of: "subjectOf",
    trial_design: "trialDesign",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MedicalTrial", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalTrial` struct."
  def new, do: %__MODULE__{}
end
