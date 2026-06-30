defmodule SchemaOrg.ShippingDeliveryTime do
  @moduledoc "ShippingDeliveryTime provides various pieces of information about delivery times for shipping."

  defstruct [
    :additional_type,
    :alternate_name,
    :business_days,
    :cutoff_time,
    :description,
    :disambiguating_description,
    :handling_time,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :transit_time,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    business_days: "businessDays",
    cutoff_time: "cutoffTime",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    handling_time: "handlingTime",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    transit_time: "transitTime",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ShippingDeliveryTime", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ShippingDeliveryTime` struct."
  def new, do: %__MODULE__{}
end
