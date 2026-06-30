defmodule SchemaOrg.ProgramMembership do
  @moduledoc "Used to describe membership in a loyalty programs (e.g. \"StarAliance\"), traveler clubs (e.g. \"AAA\"), purchase clubs (\"Safeway Club\"), etc."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :hosting_organization,
    :identifier,
    :image,
    :main_entity_of_page,
    :member,
    :members,
    :membership_number,
    :membership_points_earned,
    :name,
    :owner,
    :potential_action,
    :program,
    :program_name,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    hosting_organization: "hostingOrganization",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    member: "member",
    members: "members",
    membership_number: "membershipNumber",
    membership_points_earned: "membershipPointsEarned",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    program: "program",
    program_name: "programName",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ProgramMembership", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ProgramMembership` struct."
  def new, do: %__MODULE__{}
end
