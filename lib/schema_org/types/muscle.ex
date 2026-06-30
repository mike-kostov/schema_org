defmodule SchemaOrg.Muscle do
  @moduledoc "A muscle is an anatomical structure consisting of a contractile form of tissue that animals use to effect movement."

  defstruct [
    :additional_type,
    :alternate_name,
    :antagonist,
    :associated_pathophysiology,
    :blood_supply,
    :body_location,
    :code,
    :connected_to,
    :description,
    :diagram,
    :disambiguating_description,
    :funding,
    :guideline,
    :identifier,
    :image,
    :insertion,
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :muscle_action,
    :name,
    :nerve,
    :owner,
    :part_of_system,
    :potential_action,
    :recognizing_authority,
    :related_condition,
    :related_therapy,
    :relevant_specialty,
    :same_as,
    :study,
    :sub_structure,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    antagonist: "antagonist",
    associated_pathophysiology: "associatedPathophysiology",
    blood_supply: "bloodSupply",
    body_location: "bodyLocation",
    code: "code",
    connected_to: "connectedTo",
    description: "description",
    diagram: "diagram",
    disambiguating_description: "disambiguatingDescription",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
    insertion: "insertion",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    muscle_action: "muscleAction",
    name: "name",
    nerve: "nerve",
    owner: "owner",
    part_of_system: "partOfSystem",
    potential_action: "potentialAction",
    recognizing_authority: "recognizingAuthority",
    related_condition: "relatedCondition",
    related_therapy: "relatedTherapy",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    study: "study",
    sub_structure: "subStructure",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Muscle", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Muscle` struct."
  def new, do: %__MODULE__{}
end
