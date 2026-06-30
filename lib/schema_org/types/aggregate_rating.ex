defmodule SchemaOrg.AggregateRating do
  @moduledoc "The average rating based on multiple ratings or reviews."

  defstruct [
    :additional_type,
    :alternate_name,
    :author,
    :best_rating,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :item_reviewed,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :rating_count,
    :rating_explanation,
    :rating_value,
    :review_aspect,
    :review_count,
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
    item_reviewed: "itemReviewed",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    rating_count: "ratingCount",
    rating_explanation: "ratingExplanation",
    rating_value: "ratingValue",
    review_aspect: "reviewAspect",
    review_count: "reviewCount",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    worst_rating: "worstRating"
  }

  @doc false
  def __schema_org__, do: %{type: "AggregateRating", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.AggregateRating` struct."
  def new, do: %__MODULE__{}
end
