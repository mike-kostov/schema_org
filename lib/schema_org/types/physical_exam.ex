defmodule SchemaOrg.PhysicalExam do
  @moduledoc "A type of physical examination of a patient performed by a physician. "

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
    :superseded_by,
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
    superseded_by: "supersededBy",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "PhysicalExam", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.PhysicalExam` struct."
  def new, do: %__MODULE__{}
end
