defmodule SchemaOrg.DrugCost do
  @moduledoc "The cost per unit of a medical drug. Note that this type is not meant to represent the price in an offer of a drug for sale; see the Offer type for that. This type will typically be used to tag wholesale or average retail cost of a drug, or maximum reimbursable cost. Costs of medical drugs vary widely depending on how and where they are paid for, so while this type captures some of the variables, costs should be used with caution by consumers of this schema's markup."

  defstruct [
    :additional_type,
    :alternate_name,
    :applicable_location,
    :code,
    :cost_category,
    :cost_currency,
    :cost_origin,
    :cost_per_unit,
    :description,
    :disambiguating_description,
    :drug_unit,
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
    applicable_location: "applicableLocation",
    code: "code",
    cost_category: "costCategory",
    cost_currency: "costCurrency",
    cost_origin: "costOrigin",
    cost_per_unit: "costPerUnit",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    drug_unit: "drugUnit",
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
  def __schema_org__, do: %{type: "DrugCost", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DrugCost` struct."
  def new, do: %__MODULE__{}
end
