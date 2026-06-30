defmodule SchemaOrg.Ticket do
  @moduledoc "Used to describe a ticket to an event, a flight, a bus ride, etc."

  defstruct [
    :additional_type,
    :alternate_name,
    :date_issued,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :issued_by,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :price_currency,
    :same_as,
    :subject_of,
    :ticket_number,
    :ticket_token,
    :ticketed_seat,
    :total_price,
    :under_name,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    date_issued: "dateIssued",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    issued_by: "issuedBy",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    price_currency: "priceCurrency",
    same_as: "sameAs",
    subject_of: "subjectOf",
    ticket_number: "ticketNumber",
    ticket_token: "ticketToken",
    ticketed_seat: "ticketedSeat",
    total_price: "totalPrice",
    under_name: "underName",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Ticket", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Ticket` struct."
  def new, do: %__MODULE__{}
end
