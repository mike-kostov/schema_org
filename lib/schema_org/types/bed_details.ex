defmodule SchemaOrg.BedDetails do
  @moduledoc "An entity holding detailed information about the available bed types, e.g. the quantity of twin beds for a hotel room. For the single case of just one bed of a certain type, you can use bed directly with a text. See also [[BedType]] (under development)."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :number_of_beds,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :type_of_bed,
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
    number_of_beds: "numberOfBeds",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    type_of_bed: "typeOfBed",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "BedDetails", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.BedDetails` struct."
  def new, do: %__MODULE__{}
end
