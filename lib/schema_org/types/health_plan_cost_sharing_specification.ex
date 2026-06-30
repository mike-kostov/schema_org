defmodule SchemaOrg.HealthPlanCostSharingSpecification do
  @moduledoc "A description of costs to the patient under a given network or formulary."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :health_plan_coinsurance_option,
    :health_plan_coinsurance_rate,
    :health_plan_copay,
    :health_plan_copay_option,
    :health_plan_pharmacy_category,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
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
    health_plan_coinsurance_option: "healthPlanCoinsuranceOption",
    health_plan_coinsurance_rate: "healthPlanCoinsuranceRate",
    health_plan_copay: "healthPlanCopay",
    health_plan_copay_option: "healthPlanCopayOption",
    health_plan_pharmacy_category: "healthPlanPharmacyCategory",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "HealthPlanCostSharingSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.HealthPlanCostSharingSpecification` struct."
  def new, do: %__MODULE__{}
end
