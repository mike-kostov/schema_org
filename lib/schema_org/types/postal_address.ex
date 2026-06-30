defmodule SchemaOrg.PostalAddress do
  @moduledoc "The mailing address."

  defstruct [
    :additional_type,
    :address_country,
    :address_locality,
    :address_region,
    :alternate_name,
    :area_served,
    :available_language,
    :contact_option,
    :contact_type,
    :description,
    :disambiguating_description,
    :email,
    :extended_address,
    :fax_number,
    :hours_available,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :post_office_box_number,
    :postal_code,
    :potential_action,
    :product_supported,
    :same_as,
    :service_area,
    :street_address,
    :subject_of,
    :telephone,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    address_country: "addressCountry",
    address_locality: "addressLocality",
    address_region: "addressRegion",
    alternate_name: "alternateName",
    area_served: "areaServed",
    available_language: "availableLanguage",
    contact_option: "contactOption",
    contact_type: "contactType",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    email: "email",
    extended_address: "extendedAddress",
    fax_number: "faxNumber",
    hours_available: "hoursAvailable",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    post_office_box_number: "postOfficeBoxNumber",
    postal_code: "postalCode",
    potential_action: "potentialAction",
    product_supported: "productSupported",
    same_as: "sameAs",
    service_area: "serviceArea",
    street_address: "streetAddress",
    subject_of: "subjectOf",
    telephone: "telephone",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "PostalAddress", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.PostalAddress` struct."
  def new, do: %__MODULE__{}
end
