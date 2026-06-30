defmodule SchemaOrg.TypeAndQuantityNode do
  @moduledoc "A structured value indicating the quantity, unit of measurement, and business function of goods included in a bundle offer."

  defstruct [
    :additional_type,
    :alternate_name,
    :amount_of_this_good,
    :business_function,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :type_of_good,
    :unit_code,
    :unit_text,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    amount_of_this_good: "amountOfThisGood",
    business_function: "businessFunction",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    type_of_good: "typeOfGood",
    unit_code: "unitCode",
    unit_text: "unitText",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "TypeAndQuantityNode", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.TypeAndQuantityNode` struct."
  def new, do: %__MODULE__{}
end
