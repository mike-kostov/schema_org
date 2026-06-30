defmodule SchemaOrg.Seat do
  @moduledoc "Used to describe a seat, such as a reserved seat in an event reservation."

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
    :potential_action,
    :same_as,
    :seat_number,
    :seat_row,
    :seat_section,
    :seating_type,
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
    potential_action: "potentialAction",
    same_as: "sameAs",
    seat_number: "seatNumber",
    seat_row: "seatRow",
    seat_section: "seatSection",
    seating_type: "seatingType",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Seat", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Seat` struct."
  def new, do: %__MODULE__{}
end
