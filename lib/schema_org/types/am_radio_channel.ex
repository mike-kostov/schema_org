defmodule SchemaOrg.AMRadioChannel do
  @moduledoc "A radio channel that uses AM."

  defstruct [
    :additional_type,
    :alternate_name,
    :broadcast_channel_id,
    :broadcast_frequency,
    :broadcast_service_tier,
    :description,
    :disambiguating_description,
    :genre,
    :identifier,
    :image,
    :in_broadcast_lineup,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :provides_broadcast_service,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    broadcast_channel_id: "broadcastChannelId",
    broadcast_frequency: "broadcastFrequency",
    broadcast_service_tier: "broadcastServiceTier",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    genre: "genre",
    identifier: "identifier",
    image: "image",
    in_broadcast_lineup: "inBroadcastLineup",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    provides_broadcast_service: "providesBroadcastService",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "AMRadioChannel", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.AMRadioChannel` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `broadcastChannelId` property.\n\nThe unique address by which the BroadcastService can be identified in a provider lineup. In US, this is typically a number."
  def broadcast_channel_id(%__MODULE__{} = thing, value) do
    %{thing | broadcast_channel_id: value}
  end

  @doc "Sets the Schema.org `broadcastFrequency` property.\n\nThe frequency used for over-the-air broadcasts. Numeric values or simple ranges, e.g. 87-99. In addition a shortcut idiom is supported for frequencies of AM and FM radio channels, e.g. \"87 FM\"."
  def broadcast_frequency(%__MODULE__{} = thing, value) do
    %{thing | broadcast_frequency: value}
  end

  @doc "Sets the Schema.org `broadcastServiceTier` property.\n\nThe type of service required to have access to the channel (e.g. Standard or Premium)."
  def broadcast_service_tier(%__MODULE__{} = thing, value) do
    %{thing | broadcast_service_tier: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `genre` property.\n\nGenre of the creative work, broadcast channel or group."
  def genre(%__MODULE__{} = thing, value) do
    %{thing | genre: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `inBroadcastLineup` property.\n\nThe CableOrSatelliteService offering the channel."
  def in_broadcast_lineup(%__MODULE__{} = thing, value) do
    %{thing | in_broadcast_lineup: value}
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

  @doc "Sets the Schema.org `providesBroadcastService` property.\n\nThe BroadcastService offered on this channel."
  def provides_broadcast_service(%__MODULE__{} = thing, value) do
    %{thing | provides_broadcast_service: value}
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
end
