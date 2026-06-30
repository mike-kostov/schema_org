defmodule SchemaOrg.DDxElement do
  @moduledoc "An alternative, closely-related condition typically considered later in the differential diagnosis process along with the signs that are used to distinguish it."

  defstruct [
    :additional_type,
    :alternate_name,
    :code,
    :description,
    :diagnosis,
    :disambiguating_description,
    :distinguishing_sign,
    :funding,
    :guideline,
    :identifier,
    :image,
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
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    code: "code",
    description: "description",
    diagnosis: "diagnosis",
    disambiguating_description: "disambiguatingDescription",
    distinguishing_sign: "distinguishingSign",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
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
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "DDxElement", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DDxElement` struct."
  def new, do: %__MODULE__{}
end
