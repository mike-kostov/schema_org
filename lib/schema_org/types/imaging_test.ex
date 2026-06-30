defmodule SchemaOrg.ImagingTest do
  @moduledoc "Any medical imaging modality typically used for diagnostic purposes."

  defstruct [
    :additional_type,
    :affected_by,
    :alternate_name,
    :code,
    :description,
    :disambiguating_description,
    :funding,
    :guideline,
    :identifier,
    :image,
    :imaging_technique,
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :name,
    :normal_range,
    :owner,
    :potential_action,
    :recognizing_authority,
    :relevant_specialty,
    :same_as,
    :sign_detected,
    :study,
    :subject_of,
    :url,
    :used_to_diagnose,
    :uses_device
  ]

  @json_keys %{
    additional_type: "additionalType",
    affected_by: "affectedBy",
    alternate_name: "alternateName",
    code: "code",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
    imaging_technique: "imagingTechnique",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    name: "name",
    normal_range: "normalRange",
    owner: "owner",
    potential_action: "potentialAction",
    recognizing_authority: "recognizingAuthority",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    sign_detected: "signDetected",
    study: "study",
    subject_of: "subjectOf",
    url: "url",
    used_to_diagnose: "usedToDiagnose",
    uses_device: "usesDevice"
  }

  @doc false
  def __schema_org__, do: %{type: "ImagingTest", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ImagingTest` struct."
  def new, do: %__MODULE__{}
end
