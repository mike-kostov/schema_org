defmodule SchemaOrg.MedicalCode do
  @moduledoc "A code for a medical entity."

  defstruct [
    :about,
    :additional_type,
    :alternate_name,
    :code,
    :code_value,
    :coding_system,
    :description,
    :disambiguating_description,
    :funding,
    :guideline,
    :identifier,
    :image,
    :in_code_set,
    :in_defined_term_set,
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :name,
    :owner,
    :potential_action,
    :recognizing_authority,
    :relevant_specialty,
    :same_as,
    :study,
    :subject_of,
    :term_code,
    :url
  ]

  @json_keys %{
    about: "about",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    code: "code",
    code_value: "codeValue",
    coding_system: "codingSystem",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
    in_code_set: "inCodeSet",
    in_defined_term_set: "inDefinedTermSet",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    recognizing_authority: "recognizingAuthority",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    study: "study",
    subject_of: "subjectOf",
    term_code: "termCode",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MedicalCode", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalCode` struct."
  def new, do: %__MODULE__{}
end
