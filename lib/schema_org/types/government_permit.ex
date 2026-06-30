defmodule SchemaOrg.GovernmentPermit do
  @moduledoc "A permit issued by a government agency."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :issued_by,
    :issued_through,
    :main_entity_of_page,
    :name,
    :owner,
    :permit_audience,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :valid_for,
    :valid_from,
    :valid_in,
    :valid_until
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    issued_by: "issuedBy",
    issued_through: "issuedThrough",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    permit_audience: "permitAudience",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    valid_for: "validFor",
    valid_from: "validFrom",
    valid_in: "validIn",
    valid_until: "validUntil"
  }

  @doc false
  def __schema_org__, do: %{type: "GovernmentPermit", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.GovernmentPermit` struct."
  def new, do: %__MODULE__{}
end
