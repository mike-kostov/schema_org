defmodule SchemaOrg.ParcelDelivery do
  @moduledoc "The delivery of a parcel either via the postal service or a commercial service."

  defstruct [
    :additional_type,
    :alternate_name,
    :carrier,
    :delivery_address,
    :delivery_status,
    :description,
    :disambiguating_description,
    :expected_arrival_from,
    :expected_arrival_until,
    :has_delivery_method,
    :identifier,
    :image,
    :item_shipped,
    :main_entity_of_page,
    :name,
    :origin_address,
    :owner,
    :part_of_order,
    :potential_action,
    :provider,
    :same_as,
    :subject_of,
    :tracking_number,
    :tracking_url,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    carrier: "carrier",
    delivery_address: "deliveryAddress",
    delivery_status: "deliveryStatus",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    expected_arrival_from: "expectedArrivalFrom",
    expected_arrival_until: "expectedArrivalUntil",
    has_delivery_method: "hasDeliveryMethod",
    identifier: "identifier",
    image: "image",
    item_shipped: "itemShipped",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    origin_address: "originAddress",
    owner: "owner",
    part_of_order: "partOfOrder",
    potential_action: "potentialAction",
    provider: "provider",
    same_as: "sameAs",
    subject_of: "subjectOf",
    tracking_number: "trackingNumber",
    tracking_url: "trackingUrl",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ParcelDelivery", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ParcelDelivery` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `carrier` property.\n\n'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights."
  def carrier(%__MODULE__{} = thing, value) do
    %{thing | carrier: value}
  end

  @doc "Sets the Schema.org `deliveryAddress` property.\n\nDestination address."
  def delivery_address(%__MODULE__{} = thing, value) do
    %{thing | delivery_address: value}
  end

  @doc "Sets the Schema.org `deliveryStatus` property.\n\nNew entry added as the package passes through each leg of its journey (from shipment to final delivery)."
  def delivery_status(%__MODULE__{} = thing, value) do
    %{thing | delivery_status: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `expectedArrivalFrom` property.\n\nThe earliest date the package may arrive."
  def expected_arrival_from(%__MODULE__{} = thing, value) do
    %{thing | expected_arrival_from: value}
  end

  @doc "Sets the Schema.org `expectedArrivalUntil` property.\n\nThe latest date the package may arrive."
  def expected_arrival_until(%__MODULE__{} = thing, value) do
    %{thing | expected_arrival_until: value}
  end

  @doc "Sets the Schema.org `hasDeliveryMethod` property.\n\nMethod used for delivery or shipping."
  def has_delivery_method(%__MODULE__{} = thing, value) do
    %{thing | has_delivery_method: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `itemShipped` property.\n\nItem(s) being shipped."
  def item_shipped(%__MODULE__{} = thing, value) do
    %{thing | item_shipped: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `originAddress` property.\n\nShipper's address."
  def origin_address(%__MODULE__{} = thing, value) do
    %{thing | origin_address: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `partOfOrder` property.\n\nThe overall order the items in this delivery were included in."
  def part_of_order(%__MODULE__{} = thing, value) do
    %{thing | part_of_order: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `trackingNumber` property.\n\nShipper tracking number."
  def tracking_number(%__MODULE__{} = thing, value) do
    %{thing | tracking_number: value}
  end

  @doc "Sets the Schema.org `trackingUrl` property.\n\nTracking url for the parcel delivery."
  def tracking_url(%__MODULE__{} = thing, value) do
    %{thing | tracking_url: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
