defmodule SchemaOrg.BusinessAudience do
  @moduledoc "A set of characteristics belonging to businesses, e.g. who compose an item's target audience."

  defstruct [
    :additional_type,
    :alternate_name,
    :audience_type,
    :description,
    :disambiguating_description,
    :geographic_area,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :number_of_employees,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :yearly_revenue,
    :years_in_operation
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    audience_type: "audienceType",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    geographic_area: "geographicArea",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    number_of_employees: "numberOfEmployees",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    yearly_revenue: "yearlyRevenue",
    years_in_operation: "yearsInOperation"
  }

  @doc false
  def __schema_org__, do: %{type: "BusinessAudience", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.BusinessAudience` struct."
  def new, do: %__MODULE__{}
end
