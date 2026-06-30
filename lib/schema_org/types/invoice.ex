defmodule SchemaOrg.Invoice do
  @moduledoc "A statement of the money due for goods or services; a bill."

  defstruct [
    :account_id,
    :additional_type,
    :alternate_name,
    :billing_period,
    :broker,
    :category,
    :confirmation_number,
    :customer,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :minimum_payment_due,
    :name,
    :owner,
    :payment_due,
    :payment_due_date,
    :payment_method,
    :payment_method_id,
    :payment_status,
    :potential_action,
    :provider,
    :references_order,
    :same_as,
    :scheduled_payment_date,
    :subject_of,
    :total_payment_due,
    :url
  ]

  @json_keys %{
    account_id: "accountId",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    billing_period: "billingPeriod",
    broker: "broker",
    category: "category",
    confirmation_number: "confirmationNumber",
    customer: "customer",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    minimum_payment_due: "minimumPaymentDue",
    name: "name",
    owner: "owner",
    payment_due: "paymentDue",
    payment_due_date: "paymentDueDate",
    payment_method: "paymentMethod",
    payment_method_id: "paymentMethodId",
    payment_status: "paymentStatus",
    potential_action: "potentialAction",
    provider: "provider",
    references_order: "referencesOrder",
    same_as: "sameAs",
    scheduled_payment_date: "scheduledPaymentDate",
    subject_of: "subjectOf",
    total_payment_due: "totalPaymentDue",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Invoice", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Invoice` struct."
  def new, do: %__MODULE__{}
end
