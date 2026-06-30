defmodule SchemaOrg.NutritionInformation do
  @moduledoc "Nutritional information about the recipe."

  defstruct [
    :additional_type,
    :alternate_name,
    :calories,
    :carbohydrate_content,
    :cholesterol_content,
    :description,
    :disambiguating_description,
    :fat_content,
    :fiber_content,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :protein_content,
    :same_as,
    :saturated_fat_content,
    :serving_size,
    :sodium_content,
    :subject_of,
    :sugar_content,
    :trans_fat_content,
    :unsaturated_fat_content,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    calories: "calories",
    carbohydrate_content: "carbohydrateContent",
    cholesterol_content: "cholesterolContent",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    fat_content: "fatContent",
    fiber_content: "fiberContent",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    protein_content: "proteinContent",
    same_as: "sameAs",
    saturated_fat_content: "saturatedFatContent",
    serving_size: "servingSize",
    sodium_content: "sodiumContent",
    subject_of: "subjectOf",
    sugar_content: "sugarContent",
    trans_fat_content: "transFatContent",
    unsaturated_fat_content: "unsaturatedFatContent",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "NutritionInformation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.NutritionInformation` struct."
  def new, do: %__MODULE__{}
end
