defmodule SchemaOrg.EmployeeRole do
  @moduledoc "A subclass of OrganizationRole used to describe employee relationships."

  defstruct [
    :additional_type,
    :alternate_name,
    :base_salary,
    :description,
    :disambiguating_description,
    :end_date,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :named_position,
    :numbered_position,
    :owner,
    :potential_action,
    :role_name,
    :salary_currency,
    :same_as,
    :start_date,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    base_salary: "baseSalary",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    end_date: "endDate",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    named_position: "namedPosition",
    numbered_position: "numberedPosition",
    owner: "owner",
    potential_action: "potentialAction",
    role_name: "roleName",
    salary_currency: "salaryCurrency",
    same_as: "sameAs",
    start_date: "startDate",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "EmployeeRole", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.EmployeeRole` struct."
  def new, do: %__MODULE__{}
end
