defmodule SchemaOrg.MedicalDevice do
  @moduledoc "Any object used in a medical capacity, such as to diagnose or treat a patient."

  defstruct [
    :additional_type,
    :adverse_outcome,
    :alternate_name,
    :code,
    :contraindication,
    :description,
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
    :post_op,
    :potential_action,
    :pre_op,
    :procedure,
    :recognizing_authority,
    :relevant_specialty,
    :same_as,
    :serious_adverse_outcome,
    :study,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    adverse_outcome: "adverseOutcome",
    alternate_name: "alternateName",
    code: "code",
    contraindication: "contraindication",
    description: "description",
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
    post_op: "postOp",
    potential_action: "potentialAction",
    pre_op: "preOp",
    procedure: "procedure",
    recognizing_authority: "recognizingAuthority",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    serious_adverse_outcome: "seriousAdverseOutcome",
    study: "study",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MedicalDevice", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalDevice` struct."
  def new, do: %__MODULE__{}
end
