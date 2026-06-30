defmodule SchemaOrg.ShippingConditions do
  @moduledoc "ShippingConditions represent a set of constraints and information about the conditions of shipping a product. Such conditions may apply to only a subset of the products being shipped, depending on aspects of the product like weight, size, price, destination, and others. All the specified conditions must be met for this ShippingConditions to apply."

  defstruct [
    :additional_type,
    :alternate_name,
    :depth,
    :description,
    :disambiguating_description,
    :does_not_ship,
    :height,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :num_items,
    :order_value,
    :owner,
    :potential_action,
    :same_as,
    :seasonal_override,
    :shipping_destination,
    :shipping_origin,
    :shipping_rate,
    :subject_of,
    :transit_time,
    :url,
    :weight,
    :width
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    depth: "depth",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    does_not_ship: "doesNotShip",
    height: "height",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    num_items: "numItems",
    order_value: "orderValue",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    seasonal_override: "seasonalOverride",
    shipping_destination: "shippingDestination",
    shipping_origin: "shippingOrigin",
    shipping_rate: "shippingRate",
    subject_of: "subjectOf",
    transit_time: "transitTime",
    url: "url",
    weight: "weight",
    width: "width"
  }

  @doc false
  def __schema_org__, do: %{type: "ShippingConditions", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ShippingConditions` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `depth` property.\n\nThe depth of the item."
  def depth(%__MODULE__{} = thing, value) do
    %{thing | depth: value}
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

  @doc "Sets the Schema.org `height` property.\n\nThe height of the item."
  def height(%__MODULE__{} = thing, value) do
    %{thing | height: value}
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

  @doc "Sets the Schema.org `numItems` property.\n\nLimits the number of items being shipped for which these conditions apply."
  def num_items(%__MODULE__{} = thing, value) do
    %{thing | num_items: value}
  end

  @doc "Sets the Schema.org `orderValue` property.\n\nMinimum and maximum order value for which these shipping conditions are valid."
  def order_value(%__MODULE__{} = thing, value) do
    %{thing | order_value: value}
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

  @doc "Sets the Schema.org `seasonalOverride` property.\n\nLimited period during which these shipping conditions apply."
  def seasonal_override(%__MODULE__{} = thing, value) do
    %{thing | seasonal_override: value}
  end

  @doc "Sets the Schema.org `shippingDestination` property.\n\nindicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges."
  def shipping_destination(%__MODULE__{} = thing, value) do
    %{thing | shipping_destination: value}
  end

  @doc "Sets the Schema.org `shippingOrigin` property.\n\nIndicates the origin of a shipment, i.e. where it should be coming from."
  def shipping_origin(%__MODULE__{} = thing, value) do
    %{thing | shipping_origin: value}
  end

  @doc "Sets the Schema.org `shippingRate` property.\n\nThe shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate."
  def shipping_rate(%__MODULE__{} = thing, value) do
    %{thing | shipping_rate: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `transitTime` property.\n\nThe typical delay the order has been sent for delivery and the goods reach the final customer.\n\n  In the context of [[ShippingDeliveryTime]], use the [[QuantitativeValue]]. Typical properties: minValue, maxValue, unitCode (d for DAY).\n\n  In the context of [[ShippingConditions]], use the [[ServicePeriod]]. It has a duration (as a [[QuantitativeValue]]) and also business days and a cut-off time.\n"
  def transit_time(%__MODULE__{} = thing, value) do
    %{thing | transit_time: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `weight` property.\n\nThe weight of the product or person."
  def weight(%__MODULE__{} = thing, value) do
    %{thing | weight: value}
  end

  @doc "Sets the Schema.org `width` property.\n\nThe width of the item."
  def width(%__MODULE__{} = thing, value) do
    %{thing | width: value}
  end
end
