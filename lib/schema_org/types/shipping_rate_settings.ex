defmodule SchemaOrg.ShippingRateSettings do
  @moduledoc "A ShippingRateSettings represents re-usable pieces of shipping information. It is designed for publication on an URL that may be referenced via the [[shippingSettingsLink]] property of an [[OfferShippingDetails]]. Several occurrences can be published, distinguished and matched (i.e. identified/referenced) by their different values for [[shippingLabel]]."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :does_not_ship,
    :free_shipping_threshold,
    :identifier,
    :image,
    :is_unlabelled_fallback,
    :main_entity_of_page,
    :name,
    :order_percentage,
    :owner,
    :potential_action,
    :same_as,
    :shipping_destination,
    :shipping_rate,
    :subject_of,
    :url,
    :weight_percentage
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    does_not_ship: "doesNotShip",
    free_shipping_threshold: "freeShippingThreshold",
    identifier: "identifier",
    image: "image",
    is_unlabelled_fallback: "isUnlabelledFallback",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    order_percentage: "orderPercentage",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    shipping_destination: "shippingDestination",
    shipping_rate: "shippingRate",
    subject_of: "subjectOf",
    url: "url",
    weight_percentage: "weightPercentage"
  }

  @doc false
  def __schema_org__, do: %{type: "ShippingRateSettings", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ShippingRateSettings` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
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

  @doc "Sets the Schema.org `doesNotShip` property.\n\nIndicates when shipping to a particular [[shippingDestination]] is not available."
  def does_not_ship(%__MODULE__{} = thing, value) do
    %{thing | does_not_ship: value}
  end

  @doc "Sets the Schema.org `freeShippingThreshold` property.\n\nA monetary value above (or at) which the shipping rate becomes free. Intended to be used via an [[OfferShippingDetails]] with [[shippingSettingsLink]] matching this [[ShippingRateSettings]]."
  def free_shipping_threshold(%__MODULE__{} = thing, value) do
    %{thing | free_shipping_threshold: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `isUnlabelledFallback` property.\n\nThis can be marked 'true' to indicate that some published [[DeliveryTimeSettings]] or [[ShippingRateSettings]] are intended to apply to all [[OfferShippingDetails]] published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for [[DeliveryTimeSettings]]) or shippingLabel (for [[ShippingRateSettings]]), since this property is for use with unlabelled settings."
  def is_unlabelled_fallback(%__MODULE__{} = thing, value) do
    %{thing | is_unlabelled_fallback: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `orderPercentage` property.\n\nValue representing the fraction of the value of the order that is charged as shipping cost. Example: 0.10 would mean shipping rate is 10% of the total order value."
  def order_percentage(%__MODULE__{} = thing, value) do
    %{thing | order_percentage: value}
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

  @doc "Sets the Schema.org `shippingDestination` property.\n\nindicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges."
  def shipping_destination(%__MODULE__{} = thing, value) do
    %{thing | shipping_destination: value}
  end

  @doc "Sets the Schema.org `shippingRate` property.\n\nThe shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate."
  def shipping_rate(%__MODULE__{} = thing, value) do
    %{thing | shipping_rate: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `weightPercentage` property.\n\nValue representing the fraction of the weight that is used to compute the shipping price. Example: 0.10 and a shipping weight of 15kg would add $1.5 to the order price, where the $ is the currency of the order."
  def weight_percentage(%__MODULE__{} = thing, value) do
    %{thing | weight_percentage: value}
  end
end
