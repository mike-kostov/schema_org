defmodule SchemaOrg.MonetaryAmountDistribution do
  @moduledoc "A statistical distribution of monetary amounts."

  defstruct [
    :additional_type,
    :alternate_name,
    :currency,
    :description,
    :disambiguating_description,
    :duration,
    :identifier,
    :image,
    :main_entity_of_page,
    :median,
    :name,
    :owner,
    :percentile10,
    :percentile25,
    :percentile75,
    :percentile90,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    currency: "currency",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    duration: "duration",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    median: "median",
    name: "name",
    owner: "owner",
    percentile10: "percentile10",
    percentile25: "percentile25",
    percentile75: "percentile75",
    percentile90: "percentile90",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MonetaryAmountDistribution", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MonetaryAmountDistribution` struct."
  def new, do: %__MODULE__{}
end
