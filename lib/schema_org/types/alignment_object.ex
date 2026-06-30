defmodule SchemaOrg.AlignmentObject do
  @moduledoc "An intangible item that describes an alignment between a learning resource and a node in an educational framework.\nShould not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency."

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

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alignmentType` property.\n\nA category of alignment between the learning resource and the framework node. Recommended values include: 'requires', 'textComplexity', 'readingLevel', and 'educationalSubject'."
  def alignment_type(%__MODULE__{} = thing, value) do
    %{thing | alignment_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `educationalFramework` property.\n\nThe framework to which the resource being described is aligned."
  def educational_framework(%__MODULE__{} = thing, value) do
    %{thing | educational_framework: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `targetDescription` property.\n\nThe description of a node in an established educational framework."
  def target_description(%__MODULE__{} = thing, value) do
    %{thing | target_description: value}
  end

  @doc "Sets the Schema.org `targetName` property.\n\nThe name of a node in an established educational framework."
  def target_name(%__MODULE__{} = thing, value) do
    %{thing | target_name: value}
  end

  @doc "Sets the Schema.org `targetUrl` property.\n\nThe URL of a node in an established educational framework."
  def target_url(%__MODULE__{} = thing, value) do
    %{thing | target_url: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
