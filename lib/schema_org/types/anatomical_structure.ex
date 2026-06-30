defmodule SchemaOrg.AnatomicalStructure do
  @moduledoc "Any part of the human body, typically a component of an anatomical system. Organs, tissues, and cells are all anatomical structures."

  defstruct [
    :additional_type,
    :alternate_name,
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
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
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
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "AnatomicalStructure", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.AnatomicalStructure` struct."
  def new, do: %__MODULE__{}
end
