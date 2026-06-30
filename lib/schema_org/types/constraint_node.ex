defmodule SchemaOrg.ConstraintNode do
  @moduledoc "The ConstraintNode type is provided to support usecases in which a node in a structured data graph is described with properties which appear to describe a single entity, but are being used in a situation where they serve a more abstract purpose. A [[ConstraintNode]] can be described using [[constraintProperty]] and [[numConstraints]]. These constraint properties can serve a\n    variety of purposes, and their values may sometimes be understood to indicate sets of possible values rather than single, exact and specific values."

  defstruct [
    :additional_type,
    :alternate_name,
    :constraint_property,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :num_constraints,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    constraint_property: "constraintProperty",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    num_constraints: "numConstraints",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ConstraintNode", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ConstraintNode` struct."
  def new, do: %__MODULE__{}
end
