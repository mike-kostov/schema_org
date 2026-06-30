defmodule SchemaOrg.Rating do
  @moduledoc "A rating is an evaluation on a numeric scale, such as 1 to 5 stars."

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
  def __schema_org__, do: %{type: "Rating", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Rating` struct."
  def new, do: %__MODULE__{}
end
