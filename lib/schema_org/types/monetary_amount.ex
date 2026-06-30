defmodule SchemaOrg.MonetaryAmount do
  @moduledoc "A monetary value or range. This type can be used to describe an amount of money such as $50 USD, or a range as in describing a bank account being suitable for a balance between £1,000 and £1,000,000 GBP, or the value of a salary, etc. It is recommended to use [[PriceSpecification]] Types to describe the price of an Offer, Invoice, etc."

  defstruct [
    :additional_type,
    :alternate_name,
    :currency,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :max_value,
    :min_value,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :valid_from,
    :valid_through,
    :value
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    currency: "currency",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    max_value: "maxValue",
    min_value: "minValue",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    valid_from: "validFrom",
    valid_through: "validThrough",
    value: "value"
  }

  @doc false
  def __schema_org__, do: %{type: "MonetaryAmount", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MonetaryAmount` struct."
  def new, do: %__MODULE__{}
end
