defmodule SchemaOrg.DatedMoneySpecification do
  @moduledoc "A DatedMoneySpecification represents monetary values with optional start and end dates. For example, this could represent an employee's salary over a specific period of time. __Note:__ This type has been superseded by [[MonetaryAmount]], use of that type is recommended."

  defstruct [
    :additional_type,
    :alternate_name,
    :amount,
    :currency,
    :description,
    :disambiguating_description,
    :end_date,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :start_date,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    amount: "amount",
    currency: "currency",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_date: "endDate",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    start_date: "startDate",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "DatedMoneySpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DatedMoneySpecification` struct."
  def new, do: %__MODULE__{}
end
