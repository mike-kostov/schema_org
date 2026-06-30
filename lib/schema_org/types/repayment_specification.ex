defmodule SchemaOrg.RepaymentSpecification do
  @moduledoc "A structured value representing repayment."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :down_payment,
    :early_prepayment_penalty,
    :identifier,
    :image,
    :loan_payment_amount,
    :loan_payment_frequency,
    :main_entity_of_page,
    :name,
    :number_of_loan_payments,
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
    down_payment: "downPayment",
    early_prepayment_penalty: "earlyPrepaymentPenalty",
    identifier: "identifier",
    image: "image",
    loan_payment_amount: "loanPaymentAmount",
    loan_payment_frequency: "loanPaymentFrequency",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    number_of_loan_payments: "numberOfLoanPayments",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "RepaymentSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.RepaymentSpecification` struct."
  def new, do: %__MODULE__{}
end
