defmodule SchemaOrg.ExchangeRateSpecification do
  @moduledoc "A structured value representing exchange rate."

  defstruct [
    :additional_type,
    :alternate_name,
    :currency,
    :current_exchange_rate,
    :description,
    :disambiguating_description,
    :exchange_rate_spread,
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
    currency: "currency",
    current_exchange_rate: "currentExchangeRate",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    exchange_rate_spread: "exchangeRateSpread",
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
  def __schema_org__, do: %{type: "ExchangeRateSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ExchangeRateSpecification` struct."
  def new, do: %__MODULE__{}
end
