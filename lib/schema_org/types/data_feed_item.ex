defmodule SchemaOrg.DataFeedItem do
  @moduledoc "A single item within a larger data feed."

  defstruct [
    :additional_type,
    :alternate_name,
    :date_created,
    :date_deleted,
    :date_modified,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :item,
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
    date_created: "dateCreated",
    date_deleted: "dateDeleted",
    date_modified: "dateModified",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    item: "item",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "DataFeedItem", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.DataFeedItem` struct."
  def new, do: %__MODULE__{}
end
