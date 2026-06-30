defmodule SchemaOrg.HealthPlanFormulary do
  @moduledoc "For a given health insurance plan, the specification for costs and coverage of prescription drugs."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :health_plan_cost_sharing,
    :health_plan_drug_tier,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :offers_prescription_by_mail,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    health_plan_cost_sharing: "healthPlanCostSharing",
    health_plan_drug_tier: "healthPlanDrugTier",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    offers_prescription_by_mail: "offersPrescriptionByMail",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "HealthPlanFormulary", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.HealthPlanFormulary` struct."
  def new, do: %__MODULE__{}
end
