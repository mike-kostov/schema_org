defmodule SchemaOrg.TherapeuticProcedure do
  @moduledoc "A medical procedure intended primarily for therapeutic purposes, aimed at improving a health condition."

  defstruct [
    :additional_type,
    :adverse_outcome,
    :alternate_name,
    :body_location,
    :code,
    :description,
    :disambiguating_description,
    :dose_schedule,
    :drug,
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
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    dose_schedule: "doseSchedule",
    drug: "drug",
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
    status: "status",
    study: "study",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "TherapeuticProcedure", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TherapeuticProcedure` struct."
  def new, do: %__MODULE__{}
end
