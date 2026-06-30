defmodule SchemaOrg.Vein do
  @moduledoc "A type of blood vessel that specifically carries blood to the heart."

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
    :drains_to,
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
    :region_drained,
    :related_condition,
    :related_therapy,
    :relevant_specialty,
    :same_as,
    :study,
    :sub_structure,
    :subject_of,
    :tributary,
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
    drains_to: "drainsTo",
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
    region_drained: "regionDrained",
    related_condition: "relatedCondition",
    related_therapy: "relatedTherapy",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    study: "study",
    sub_structure: "subStructure",
    subject_of: "subjectOf",
    tributary: "tributary",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Vein", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Vein` struct."
  def new, do: %__MODULE__{}
end
