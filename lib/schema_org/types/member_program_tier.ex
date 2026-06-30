defmodule SchemaOrg.MemberProgramTier do
  @moduledoc "A MemberProgramTier specifies a tier under a loyalty (member) program, for example \"gold\"."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :has_tier_benefit,
    :has_tier_requirement,
    :identifier,
    :image,
    :is_tier_of,
    :main_entity_of_page,
    :membership_points_earned,
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
    has_tier_benefit: "hasTierBenefit",
    has_tier_requirement: "hasTierRequirement",
    identifier: "identifier",
    image: "image",
    is_tier_of: "isTierOf",
    main_entity_of_page: "mainEntityOfPage",
    membership_points_earned: "membershipPointsEarned",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MemberProgramTier", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MemberProgramTier` struct."
  def new, do: %__MODULE__{}
end
