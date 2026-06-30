defmodule SchemaOrg.EntryPoint do
  @moduledoc "An entry point, within some Web-based protocol."

  defstruct [
    :action_application,
    :action_platform,
    :additional_type,
    :alternate_name,
    :application,
    :content_type,
    :description,
    :disambiguating_description,
    :encoding_type,
    :http_method,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :url_template
  ]

  @json_keys %{
    action_application: "actionApplication",
    action_platform: "actionPlatform",
    additional_type: "additionalType",
    alternate_name: "alternateName",
    application: "application",
    content_type: "contentType",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    encoding_type: "encodingType",
    http_method: "httpMethod",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    url_template: "urlTemplate"
  }

  @doc false
  def __schema_org__, do: %{type: "EntryPoint", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.EntryPoint` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `actionApplication` property.\n\nAn application that can complete the request."
  def action_application(%__MODULE__{} = thing, value) do
    %{thing | action_application: value}
  end

  @doc "Sets the Schema.org `actionPlatform` property.\n\nThe high level platform(s) where the Action can be performed for the given URL. To specify a specific application or operating system instance, use actionApplication."
  def action_platform(%__MODULE__{} = thing, value) do
    %{thing | action_platform: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `application` property.\n\nAn application that can complete the request."
  def application(%__MODULE__{} = thing, value) do
    %{thing | application: value}
  end

  @doc "Sets the Schema.org `contentType` property.\n\nThe supported content type(s) for an EntryPoint response."
  def content_type(%__MODULE__{} = thing, value) do
    %{thing | content_type: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `encodingType` property.\n\nThe supported encoding type(s) for an EntryPoint request."
  def encoding_type(%__MODULE__{} = thing, value) do
    %{thing | encoding_type: value}
  end

  @doc "Sets the Schema.org `httpMethod` property.\n\nAn HTTP method that specifies the appropriate HTTP method for a request to an HTTP EntryPoint. Values are capitalized strings as used in HTTP."
  def http_method(%__MODULE__{} = thing, value) do
    %{thing | http_method: value}
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

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `urlTemplate` property.\n\nAn url template (RFC6570) that will be used to construct the target of the execution of the action."
  def url_template(%__MODULE__{} = thing, value) do
    %{thing | url_template: value}
  end
end
