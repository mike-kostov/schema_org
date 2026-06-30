defmodule SchemaOrg.AlignmentObject do
  @moduledoc "An intangible item that describes an alignment between a learning resource and a node in an educational framework.\nShould not be used where the nature of the alignment can be described using a simple property, for example to express that a resource `teaches` or `assesses` a competency."

  defstruct [
    :additional_type,
    :alignment_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :educational_framework,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :target_description,
    :target_name,
    :target_url,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alignment_type: "alignmentType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    educational_framework: "educationalFramework",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    target_description: "targetDescription",
    target_name: "targetName",
    target_url: "targetUrl",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "AlignmentObject", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.AlignmentObject` struct."
  def new, do: %__MODULE__{}
end
