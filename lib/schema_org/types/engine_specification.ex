defmodule SchemaOrg.EngineSpecification do
  @moduledoc "Information about the engine of the vehicle. A vehicle can have multiple engines represented by multiple engine specification entities."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :engine_displacement,
    :engine_power,
    :engine_type,
    :fuel_type,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :torque,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    engine_displacement: "engineDisplacement",
    engine_power: "enginePower",
    engine_type: "engineType",
    fuel_type: "fuelType",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    torque: "torque",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "EngineSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.EngineSpecification` struct."
  def new, do: %__MODULE__{}
end
