defmodule SchemaOrg.Nerve do
  @moduledoc "A common pathway for the electrochemical nerve impulses that are transmitted along each of the axons."

  defstruct [
    :additional_type,
    :alternate_name,
    :associated_pathophysiology,
    :body_location,
    :branch,
    :code,
    :connected_to,
    :description,
    :diagram,
    :disambiguating_description,
    :funding,
    :guideline,
    :identifier,
    :image,
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :name,
    :nerve_motor,
    :owner,
    :part_of_system,
    :potential_action,
    :recognizing_authority,
    :related_condition,
    :related_therapy,
    :relevant_specialty,
    :same_as,
    :sensory_unit,
    :sourced_from,
    :study,
    :sub_structure,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    associated_pathophysiology: "associatedPathophysiology",
    body_location: "bodyLocation",
    branch: "branch",
    code: "code",
    connected_to: "connectedTo",
    description: "description",
    diagram: "diagram",
    disambiguating_description: "disambiguatingDescription",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    name: "name",
    nerve_motor: "nerveMotor",
    owner: "owner",
    part_of_system: "partOfSystem",
    potential_action: "potentialAction",
    recognizing_authority: "recognizingAuthority",
    related_condition: "relatedCondition",
    related_therapy: "relatedTherapy",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    sensory_unit: "sensoryUnit",
    sourced_from: "sourcedFrom",
    study: "study",
    sub_structure: "subStructure",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Nerve", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Nerve` struct."
  def new, do: %__MODULE__{}
end
