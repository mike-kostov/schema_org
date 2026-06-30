defmodule SchemaOrg.MonetaryAmount do
  @moduledoc "A monetary value or range. This type can be used to describe an amount of money such as $50 USD, or a range as in describing a bank account being suitable for a balance between £1,000 and £1,000,000 GBP, or the value of a salary, etc. It is recommended to use [[PriceSpecification]] Types to describe the price of an Offer, Invoice, etc."

  defstruct [
    :additional_type,
    :alternate_name,
    :currency,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :max_value,
    :min_value,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :valid_from,
    :valid_through,
    :value
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    currency: "currency",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    max_value: "maxValue",
    min_value: "minValue",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    valid_from: "validFrom",
    valid_through: "validThrough",
    value: "value"
  }

  @doc false
  def __schema_org__, do: %{type: "MonetaryAmount", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MonetaryAmount` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `currency` property.\n\nThe currency in which the monetary amount is expressed.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."
  def currency(%__MODULE__{} = thing, value) do
    %{thing | currency: value}
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

  @doc "Sets the Schema.org `maxValue` property.\n\nThe upper value of some characteristic or property."
  def max_value(%__MODULE__{} = thing, value) do
    %{thing | max_value: value}
  end

  @doc "Sets the Schema.org `minValue` property.\n\nThe lower value of some characteristic or property."
  def min_value(%__MODULE__{} = thing, value) do
    %{thing | min_value: value}
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

  @doc "Sets the Schema.org `validFrom` property.\n\nThe date when the item becomes valid."
  def valid_from(%__MODULE__{} = thing, value) do
    %{thing | valid_from: value}
  end

  @doc "Sets the Schema.org `validThrough` property.\n\nThe date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours."
  def valid_through(%__MODULE__{} = thing, value) do
    %{thing | valid_through: value}
  end

  @doc "Sets the Schema.org `value` property.\n\nThe value of a [[QuantitativeValue]] (including [[Observation]]) or property value node.\\n\\n* For [[QuantitativeValue]] and [[MonetaryAmount]], the recommended type for values is 'Number'.\\n* For [[PropertyValue]], it can be 'Text', 'Number', 'Boolean', or 'StructuredValue'.\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator."
  def value(%__MODULE__{} = thing, value) do
    %{thing | value: value}
  end
end
