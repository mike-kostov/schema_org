defmodule SchemaOrg.Grant do
  @moduledoc "A grant, typically financial or otherwise quantifiable, of resources. Typically a `funder` sponsors some `MonetaryAmount` to an `Organization` or `Person`,\n    sometimes not necessarily via a dedicated or long-lived `Project`, resulting in one or more outputs, or `fundedItem`s. For financial sponsorship, indicate the `funder` of a `MonetaryGrant`. For non-financial support, indicate `sponsor` of `Grant`s of resources (e.g. office space).\n\nGrants support  activities directed towards some agreed collective goals, often but not always organized as `Project`s. Long-lived projects are sometimes sponsored by a variety of grants over time, but it is also common for a project to be associated with a single grant.\n\nThe amount of a `Grant` is represented using `amount` as a `MonetaryAmount`."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :funded_item,
    :funder,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :sponsor,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    funded_item: "fundedItem",
    funder: "funder",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    sponsor: "sponsor",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Grant", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Grant` struct."
  def new, do: %__MODULE__{}
end
