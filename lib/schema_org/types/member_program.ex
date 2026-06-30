defmodule SchemaOrg.MemberProgram do
  @moduledoc "A MemberProgram defines a loyalty (or membership) program that provides its members with certain benefits, for example better pricing, free shipping or returns, or the ability to earn loyalty points. Member programs may have multiple tiers, for example silver and gold members, each with different benefits."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :has_tiers,
    :hosting_organization,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
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
    has_tiers: "hasTiers",
    hosting_organization: "hostingOrganization",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MemberProgram", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MemberProgram` struct."
  def new, do: %__MODULE__{}
end
