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
end
