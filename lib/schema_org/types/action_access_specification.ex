defmodule SchemaOrg.ActionAccessSpecification do
  @moduledoc "A set of requirements that must be fulfilled in order to perform an Action."

  defstruct [
    :additional_type,
    :alternate_name,
    :availability_ends,
    :availability_starts,
    :category,
    :description,
    :disambiguating_description,
    :eligible_region,
    :expects_acceptance_of,
    :identifier,
    :image,
    :ineligible_region,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :requires_subscription,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    availability_ends: "availabilityEnds",
    availability_starts: "availabilityStarts",
    category: "category",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    eligible_region: "eligibleRegion",
    expects_acceptance_of: "expectsAcceptanceOf",
    identifier: "identifier",
    image: "image",
    ineligible_region: "ineligibleRegion",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    requires_subscription: "requiresSubscription",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ActionAccessSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ActionAccessSpecification` struct."
  def new, do: %__MODULE__{}
end
