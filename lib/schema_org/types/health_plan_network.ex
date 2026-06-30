defmodule SchemaOrg.HealthPlanNetwork do
  @moduledoc "A US-style health insurance plan network."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :health_plan_cost_sharing,
    :health_plan_network_id,
    :health_plan_network_tier,
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
    health_plan_cost_sharing: "healthPlanCostSharing",
    health_plan_network_id: "healthPlanNetworkId",
    health_plan_network_tier: "healthPlanNetworkTier",
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
  def __schema_org__, do: %{type: "HealthPlanNetwork", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.HealthPlanNetwork` struct."
  def new, do: %__MODULE__{}
end
