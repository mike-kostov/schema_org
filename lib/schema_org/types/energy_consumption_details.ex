defmodule SchemaOrg.EnergyConsumptionDetails do
  @moduledoc "EnergyConsumptionDetails represents information related to the energy efficiency of a product that consumes energy. The information that can be provided is based on international regulations such as for example [EU directive 2017/1369](https://eur-lex.europa.eu/eli/reg/2017/1369/oj) for energy labeling and the [Energy labeling rule](https://www.ftc.gov/enforcement/rules/rulemaking-regulatory-reform-proceedings/energy-water-use-labeling-consumer) under the Energy Policy and Conservation Act (EPCA) in the US."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :energy_efficiency_scale_max,
    :energy_efficiency_scale_min,
    :has_energy_efficiency_category,
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
    energy_efficiency_scale_max: "energyEfficiencyScaleMax",
    energy_efficiency_scale_min: "energyEfficiencyScaleMin",
    has_energy_efficiency_category: "hasEnergyEfficiencyCategory",
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
  def __schema_org__, do: %{type: "EnergyConsumptionDetails", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.EnergyConsumptionDetails` struct."
  def new, do: %__MODULE__{}
end
