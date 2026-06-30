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

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `calories` property.\n\nThe number of calories."
  def calories(%__MODULE__{} = thing, value) do
    %{thing | calories: value}
  end

  @doc "Sets the Schema.org `carbohydrateContent` property.\n\nThe number of grams of carbohydrates."
  def carbohydrate_content(%__MODULE__{} = thing, value) do
    %{thing | carbohydrate_content: value}
  end

  @doc "Sets the Schema.org `cholesterolContent` property.\n\nThe number of milligrams of cholesterol."
  def cholesterol_content(%__MODULE__{} = thing, value) do
    %{thing | cholesterol_content: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `fatContent` property.\n\nThe number of grams of fat."
  def fat_content(%__MODULE__{} = thing, value) do
    %{thing | fat_content: value}
  end

  @doc "Sets the Schema.org `fiberContent` property.\n\nThe number of grams of fiber."
  def fiber_content(%__MODULE__{} = thing, value) do
    %{thing | fiber_content: value}
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

  @doc "Sets the Schema.org `proteinContent` property.\n\nThe number of grams of protein."
  def protein_content(%__MODULE__{} = thing, value) do
    %{thing | protein_content: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `saturatedFatContent` property.\n\nThe number of grams of saturated fat."
  def saturated_fat_content(%__MODULE__{} = thing, value) do
    %{thing | saturated_fat_content: value}
  end

  @doc "Sets the Schema.org `servingSize` property.\n\nThe serving size, in terms of the number of volume or mass."
  def serving_size(%__MODULE__{} = thing, value) do
    %{thing | serving_size: value}
  end

  @doc "Sets the Schema.org `sodiumContent` property.\n\nThe number of milligrams of sodium."
  def sodium_content(%__MODULE__{} = thing, value) do
    %{thing | sodium_content: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `sugarContent` property.\n\nThe number of grams of sugar."
  def sugar_content(%__MODULE__{} = thing, value) do
    %{thing | sugar_content: value}
  end

  @doc "Sets the Schema.org `transFatContent` property.\n\nThe number of grams of trans fat."
  def trans_fat_content(%__MODULE__{} = thing, value) do
    %{thing | trans_fat_content: value}
  end

  @doc "Sets the Schema.org `unsaturatedFatContent` property.\n\nThe number of grams of unsaturated fat."
  def unsaturated_fat_content(%__MODULE__{} = thing, value) do
    %{thing | unsaturated_fat_content: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
