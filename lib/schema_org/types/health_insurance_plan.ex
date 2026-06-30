defmodule SchemaOrg.HealthInsurancePlan do
  @moduledoc "A US-style health insurance plan, including PPOs, EPOs, and HMOs."

  defstruct [
    :additional_type,
    :alternate_name,
    :benefits_summary_url,
    :contact_point,
    :description,
    :disambiguating_description,
    :health_plan_drug_option,
    :health_plan_drug_tier,
    :health_plan_id,
    :health_plan_marketing_url,
    :identifier,
    :image,
    :includes_health_plan_formulary,
    :includes_health_plan_network,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :uses_health_plan_id_standard
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    benefits_summary_url: "benefitsSummaryUrl",
    contact_point: "contactPoint",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    health_plan_drug_option: "healthPlanDrugOption",
    health_plan_drug_tier: "healthPlanDrugTier",
    health_plan_id: "healthPlanId",
    health_plan_marketing_url: "healthPlanMarketingUrl",
    identifier: "identifier",
    image: "image",
    includes_health_plan_formulary: "includesHealthPlanFormulary",
    includes_health_plan_network: "includesHealthPlanNetwork",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    uses_health_plan_id_standard: "usesHealthPlanIdStandard"
  }

  @doc false
  def __schema_org__, do: %{type: "HealthInsurancePlan", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.HealthInsurancePlan` struct."
  def new, do: %__MODULE__{}
end
