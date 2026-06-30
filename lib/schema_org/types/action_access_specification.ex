defmodule SchemaOrg.ActionAccessSpecification do
  @moduledoc "A set of requirements that must be fulfilled in order to perform an Action."

  defstruct [
    :additional_type,
    :alternate_name,
    :availability_ends,
    :availability_starts,
    :category,
    :description,
    :disambiguating_description,
    :eligible_region,
    :expects_acceptance_of,
    :identifier,
    :image,
    :ineligible_region,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :requires_subscription,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    availability_ends: "availabilityEnds",
    availability_starts: "availabilityStarts",
    category: "category",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    eligible_region: "eligibleRegion",
    expects_acceptance_of: "expectsAcceptanceOf",
    identifier: "identifier",
    image: "image",
    ineligible_region: "ineligibleRegion",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    requires_subscription: "requiresSubscription",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ActionAccessSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ActionAccessSpecification` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `availabilityEnds` property.\n\nThe end of the availability of the product or service included in the offer."
  def availability_ends(%__MODULE__{} = thing, value) do
    %{thing | availability_ends: value}
  end

  @doc "Sets the Schema.org `availabilityStarts` property.\n\nThe beginning of the availability of the product or service included in the offer."
  def availability_starts(%__MODULE__{} = thing, value) do
    %{thing | availability_starts: value}
  end

  @doc "Sets the Schema.org `category` property.\n\nA category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."
  def category(%__MODULE__{} = thing, value) do
    %{thing | category: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `eligibleRegion` property.\n\nThe ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\\n\\nSee also [[ineligibleRegion]].\n    "
  def eligible_region(%__MODULE__{} = thing, value) do
    %{thing | eligible_region: value}
  end

  @doc "Sets the Schema.org `expectsAcceptanceOf` property.\n\nAn Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it."
  def expects_acceptance_of(%__MODULE__{} = thing, value) do
    %{thing | expects_acceptance_of: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `ineligibleRegion` property.\n\nThe ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\\n\\nSee also [[eligibleRegion]].\n      "
  def ineligible_region(%__MODULE__{} = thing, value) do
    %{thing | ineligible_region: value}
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

  @doc "Sets the Schema.org `requiresSubscription` property.\n\nIndicates if use of the media require a subscription  (either paid or free). Allowed values are ```true``` or ```false``` (note that an earlier version had 'yes', 'no')."
  def requires_subscription(%__MODULE__{} = thing, value) do
    %{thing | requires_subscription: value}
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
