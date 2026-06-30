defmodule SchemaOrg.FinancialIncentive do
  @moduledoc "Represents financial incentives for goods/services offered by an organization (or individual).\n\nTypically contains the `name` of the incentive, the `incentivizedItem`, the `incentiveAmount`, the `incentiveStatus`, `incentiveType`, the `provider` of the incentive, and `eligibleWithSupplier`.\n\nOptionally contains criteria on whether the incentive is limited based on `purchaseType`, `purchasePriceLimit`, `incomeLimit`, and the `qualifiedExpense`."

  defstruct [
    :additional_type,
    :alternate_name,
    :area_served,
    :description,
    :disambiguating_description,
    :eligible_with_supplier,
    :identifier,
    :image,
    :incentive_amount,
    :incentive_status,
    :incentive_type,
    :incentivized_item,
    :income_limit,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :provider,
    :publisher,
    :purchase_price_limit,
    :purchase_type,
    :qualified_expense,
    :same_as,
    :subject_of,
    :url,
    :valid_from,
    :valid_through
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    area_served: "areaServed",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    eligible_with_supplier: "eligibleWithSupplier",
    identifier: "identifier",
    image: "image",
    incentive_amount: "incentiveAmount",
    incentive_status: "incentiveStatus",
    incentive_type: "incentiveType",
    incentivized_item: "incentivizedItem",
    income_limit: "incomeLimit",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    provider: "provider",
    publisher: "publisher",
    purchase_price_limit: "purchasePriceLimit",
    purchase_type: "purchaseType",
    qualified_expense: "qualifiedExpense",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    valid_from: "validFrom",
    valid_through: "validThrough"
  }

  @doc false
  def __schema_org__, do: %{type: "FinancialIncentive", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.FinancialIncentive` struct."
  def new, do: %__MODULE__{}
end
