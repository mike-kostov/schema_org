defmodule SchemaOrg.Artery do
  @moduledoc "A type of blood vessel that specifically carries blood away from the heart."

  defstruct [
    :additional_type,
    :alternate_name,
    :arterial_branch,
    :associated_pathophysiology,
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
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :name,
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
    :supply_to,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    arterial_branch: "arterialBranch",
    associated_pathophysiology: "associatedPathophysiology",
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
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    name: "name",
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
    supply_to: "supplyTo",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Artery", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Artery` struct."
  def new, do: %__MODULE__{}
end
