defmodule SchemaOrg.ServiceChannel do
  @moduledoc "A means for accessing a service, e.g. a government office location, web site, or phone number."

  defstruct [
    :additional_type,
    :alternate_name,
    :available_language,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :processing_time,
    :provides_service,
    :same_as,
    :service_location,
    :service_phone,
    :service_postal_address,
    :service_sms_number,
    :service_url,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    available_language: "availableLanguage",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    processing_time: "processingTime",
    provides_service: "providesService",
    same_as: "sameAs",
    service_location: "serviceLocation",
    service_phone: "servicePhone",
    service_postal_address: "servicePostalAddress",
    service_sms_number: "serviceSmsNumber",
    service_url: "serviceUrl",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ServiceChannel", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ServiceChannel` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `availableLanguage` property.\n\nA language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]]."
  def available_language(%__MODULE__{} = thing, value) do
    %{thing | available_language: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
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

  @doc "Sets the Schema.org `processingTime` property.\n\nEstimated processing time for the service using this channel."
  def processing_time(%__MODULE__{} = thing, value) do
    %{thing | processing_time: value}
  end

  @doc "Sets the Schema.org `providesService` property.\n\nThe service provided by this channel."
  def provides_service(%__MODULE__{} = thing, value) do
    %{thing | provides_service: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `serviceLocation` property.\n\nThe location (e.g. civic structure, local business, etc.) where a person can go to access the service."
  def service_location(%__MODULE__{} = thing, value) do
    %{thing | service_location: value}
  end

  @doc "Sets the Schema.org `servicePhone` property.\n\nThe phone number to use to access the service."
  def service_phone(%__MODULE__{} = thing, value) do
    %{thing | service_phone: value}
  end

  @doc "Sets the Schema.org `servicePostalAddress` property.\n\nThe address for accessing the service by mail."
  def service_postal_address(%__MODULE__{} = thing, value) do
    %{thing | service_postal_address: value}
  end

  @doc "Sets the Schema.org `serviceSmsNumber` property.\n\nThe number to access the service by text message."
  def service_sms_number(%__MODULE__{} = thing, value) do
    %{thing | service_sms_number: value}
  end

  @doc "Sets the Schema.org `serviceUrl` property.\n\nThe website to access the service."
  def service_url(%__MODULE__{} = thing, value) do
    %{thing | service_url: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
