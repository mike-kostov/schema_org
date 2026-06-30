defmodule SchemaOrg.OccupationalTherapy do
  @moduledoc "A treatment of people with physical, emotional, or social problems, using purposeful activity to help them overcome or learn to deal with their problems."

  defstruct [
    :additional_type,
    :adverse_outcome,
    :alternate_name,
    :body_location,
    :code,
    :contraindication,
    :description,
    :disambiguating_description,
    :dose_schedule,
    :drug,
    :duplicate_therapy,
    :followup,
    :funding,
    :guideline,
    :how_performed,
    :identifier,
    :image,
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :name,
    :owner,
    :potential_action,
    :preparation,
    :procedure_type,
    :recognizing_authority,
    :relevant_specialty,
    :same_as,
    :serious_adverse_outcome,
    :status,
    :study,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    adverse_outcome: "adverseOutcome",
    alternate_name: "alternateName",
    body_location: "bodyLocation",
    code: "code",
    contraindication: "contraindication",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    dose_schedule: "doseSchedule",
    drug: "drug",
    duplicate_therapy: "duplicateTherapy",
    followup: "followup",
    funding: "funding",
    guideline: "guideline",
    how_performed: "howPerformed",
    identifier: "identifier",
    image: "image",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    preparation: "preparation",
    procedure_type: "procedureType",
    recognizing_authority: "recognizingAuthority",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    serious_adverse_outcome: "seriousAdverseOutcome",
    status: "status",
    study: "study",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "OccupationalTherapy", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.OccupationalTherapy` struct."
  def new, do: %__MODULE__{}
end
