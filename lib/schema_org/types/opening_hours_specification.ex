defmodule SchemaOrg.OpeningHoursSpecification do
  @moduledoc "A structured value providing information about the opening hours of a place or a certain service inside a place.\\n\\n\nThe place is __open__ if the [[opens]] property is specified, and __closed__ otherwise.\\n\\nIf the value for the [[closes]] property is less than the value for the [[opens]] property then the hour range is assumed to span over the next day.\n      "

  defstruct [
    :additional_type,
    :alternate_name,
    :closes,
    :day_of_week,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :opens,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :valid_from,
    :valid_through
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    closes: "closes",
    day_of_week: "dayOfWeek",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    opens: "opens",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    valid_from: "validFrom",
    valid_through: "validThrough"
  }

  @doc false
  def __schema_org__, do: %{type: "OpeningHoursSpecification", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.OpeningHoursSpecification` struct."
  def new, do: %__MODULE__{}
end
