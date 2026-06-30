defmodule SchemaOrg.MedicalProcedure do
  @moduledoc "A process of care used in either a diagnostic, therapeutic, preventive or palliative capacity that relies on invasive (surgical), non-invasive, or other techniques."

  defstruct [
    :additional_type,
    :alternate_name,
    :body_location,
    :code,
    :description,
    :disambiguating_description,
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
    alternate_name: "alternateName",
    body_location: "bodyLocation",
    code: "code",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
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
  def __schema_org__, do: %{type: "MedicalProcedure", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalProcedure` struct."
  def new, do: %__MODULE__{}
end
