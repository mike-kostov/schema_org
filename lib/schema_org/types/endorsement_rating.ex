defmodule SchemaOrg.EndorsementRating do
  @moduledoc "An EndorsementRating is a rating that expresses some level of endorsement, for example inclusion in a \"critic's pick\" blog, a\n\"Like\" or \"+1\" on a social network. It can be considered the [[result]] of an [[EndorseAction]] in which the [[object]] of the action is rated positively by\nsome [[agent]]. As is common elsewhere in schema.org, it is sometimes more useful to describe the results of such an action without explicitly describing the [[Action]].\n\nAn [[EndorsementRating]] may be part of a numeric scale or organized system, but this is not required: having an explicit type for indicating a positive,\nendorsement rating is particularly useful in the absence of numeric scales as it helps consumers understand that the rating is broadly positive.\n"

  defstruct [
    :additional_type,
    :alternate_name,
    :author,
    :best_rating,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :rating_explanation,
    :rating_value,
    :review_aspect,
    :same_as,
    :subject_of,
    :url,
    :worst_rating
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    author: "author",
    best_rating: "bestRating",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    rating_explanation: "ratingExplanation",
    rating_value: "ratingValue",
    review_aspect: "reviewAspect",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    worst_rating: "worstRating"
  }

  @doc false
  def __schema_org__, do: %{type: "EndorsementRating", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.EndorsementRating` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `author` property.\n\nThe author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably."
  def author(%__MODULE__{} = thing, value) do
    %{thing | author: value}
  end

  @doc "Sets the Schema.org `bestRating` property.\n\nThe highest value allowed in this rating system."
  def best_rating(%__MODULE__{} = thing, value) do
    %{thing | best_rating: value}
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

  @doc "Sets the Schema.org `ratingExplanation` property.\n\nA short explanation (e.g. one to two sentences) providing background context and other information that led to the conclusion expressed in the rating. This is particularly applicable to ratings associated with \"fact check\" markup using [[ClaimReview]]."
  def rating_explanation(%__MODULE__{} = thing, value) do
    %{thing | rating_explanation: value}
  end

  @doc "Sets the Schema.org `ratingValue` property.\n\nThe rating for the content.\\n\\nUsage guidelines:\\n\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator."
  def rating_value(%__MODULE__{} = thing, value) do
    %{thing | rating_value: value}
  end

  @doc "Sets the Schema.org `reviewAspect` property.\n\nThis Review or Rating is relevant to this part or facet of the itemReviewed."
  def review_aspect(%__MODULE__{} = thing, value) do
    %{thing | review_aspect: value}
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

  @doc "Sets the Schema.org `worstRating` property.\n\nThe lowest value allowed in this rating system."
  def worst_rating(%__MODULE__{} = thing, value) do
    %{thing | worst_rating: value}
  end
end
