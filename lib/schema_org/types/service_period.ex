defmodule SchemaOrg.ServicePeriod do
  @moduledoc "ServicePeriod represents a duration with some constraints about cutoff time and business days. This is used e.g. in shipping for handling times or transit time."

  defstruct [
    :additional_type,
    :alternate_name,
    :business_days,
    :cutoff_time,
    :description,
    :disambiguating_description,
    :duration,
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
    business_days: "businessDays",
    cutoff_time: "cutoffTime",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    duration: "duration",
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
  def __schema_org__, do: %{type: "ServicePeriod", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ServicePeriod` struct."
  def new, do: %__MODULE__{}
end
