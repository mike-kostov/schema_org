defmodule SchemaOrg.ContactPoint do
  @moduledoc "A contact point&#x2014;for example, a Customer Complaints department."

  defstruct [
    :additional_type,
    :alternate_name,
    :area_served,
    :available_language,
    :contact_option,
    :contact_type,
    :description,
    :disambiguating_description,
    :email,
    :fax_number,
    :hours_available,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :product_supported,
    :same_as,
    :service_area,
    :subject_of,
    :telephone,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    area_served: "areaServed",
    available_language: "availableLanguage",
    contact_option: "contactOption",
    contact_type: "contactType",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    email: "email",
    fax_number: "faxNumber",
    hours_available: "hoursAvailable",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    product_supported: "productSupported",
    same_as: "sameAs",
    service_area: "serviceArea",
    subject_of: "subjectOf",
    telephone: "telephone",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ContactPoint", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ContactPoint` struct."
  def new, do: %__MODULE__{}
end
