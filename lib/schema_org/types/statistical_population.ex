defmodule SchemaOrg.StatisticalPopulation do
  @moduledoc "A StatisticalPopulation is a set of instances of a certain given type that satisfy some set of constraints. The property `populationType` is used to specify the type. Any property that can be used on instances of that type can appear on the statistical population. For example, a `StatisticalPopulation` representing all `Person`s with a `homeLocation` of East Podunk California would be described by applying the appropriate `homeLocation` and `populationType` properties to a `StatisticalPopulation` item that stands for that set of people.\nThe properties `numConstraints` and `constraintProperty` are used to specify which of the populations properties are used to specify the population. Note that the sense of \"population\" used here is the general sense of a statistical\npopulation, and does not imply that the population consists of people. For example, a `populationType` of `Event` or `NewsArticle` could be used. See also `Observation`, where a `populationType` such as `Person` or `Event` can be indicated directly. In most cases it may be better to use `StatisticalVariable` instead of `StatisticalPopulation`."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :population_type,
    :potential_action,
    :same_as,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    population_type: "populationType",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "StatisticalPopulation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.StatisticalPopulation` struct."
  def new, do: %__MODULE__{}
end
