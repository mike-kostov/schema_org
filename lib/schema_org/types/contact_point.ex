defmodule SchemaOrg.ContactPoint do
  @moduledoc "A contact point&#x2014;for example, a Customer Complaints department."

  defstruct [
    :additional_type,
    :alternate_name,
    :area_served,
    :available_language,
    :contact_option,
    :contact_type,
    :description,
    :disambiguating_description,
    :email,
    :fax_number,
    :hours_available,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :product_supported,
    :same_as,
    :service_area,
    :subject_of,
    :telephone,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    area_served: "areaServed",
    available_language: "availableLanguage",
    contact_option: "contactOption",
    contact_type: "contactType",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    email: "email",
    fax_number: "faxNumber",
    hours_available: "hoursAvailable",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    product_supported: "productSupported",
    same_as: "sameAs",
    service_area: "serviceArea",
    subject_of: "subjectOf",
    telephone: "telephone",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ContactPoint", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ContactPoint` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `areaServed` property.\n\nThe geographic area where a service or offered item is provided."
  def area_served(%__MODULE__{} = thing, value) do
    %{thing | area_served: value}
  end

  @doc "Sets the Schema.org `availableLanguage` property.\n\nA language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]]."
  def available_language(%__MODULE__{} = thing, value) do
    %{thing | available_language: value}
  end

  @doc "Sets the Schema.org `contactOption` property.\n\nAn option available on this contact point (e.g. a toll-free number or support for hearing-impaired callers)."
  def contact_option(%__MODULE__{} = thing, value) do
    %{thing | contact_option: value}
  end

  @doc "Sets the Schema.org `contactType` property.\n\nA person or organization can have different contact points, for different purposes. For example, a sales contact point, a PR contact point and so on. This property is used to specify the kind of contact point."
  def contact_type(%__MODULE__{} = thing, value) do
    %{thing | contact_type: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `email` property.\n\nEmail address."
  def email(%__MODULE__{} = thing, value) do
    %{thing | email: value}
  end

  @doc "Sets the Schema.org `faxNumber` property.\n\nThe fax number."
  def fax_number(%__MODULE__{} = thing, value) do
    %{thing | fax_number: value}
  end

  @doc "Sets the Schema.org `hoursAvailable` property.\n\nThe hours during which this service or contact is available."
  def hours_available(%__MODULE__{} = thing, value) do
    %{thing | hours_available: value}
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

  @doc "Sets the Schema.org `productSupported` property.\n\nThe product or service this support contact point is related to (such as product support for a particular product line). This can be a specific product or product line (e.g. \"iPhone\") or a general category of products or services (e.g. \"smartphones\")."
  def product_supported(%__MODULE__{} = thing, value) do
    %{thing | product_supported: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `serviceArea` property.\n\nThe geographic area where the service is provided."
  def service_area(%__MODULE__{} = thing, value) do
    %{thing | service_area: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `telephone` property.\n\nThe telephone number."
  def telephone(%__MODULE__{} = thing, value) do
    %{thing | telephone: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
