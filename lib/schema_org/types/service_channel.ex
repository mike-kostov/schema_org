defmodule SchemaOrg.ServiceChannel do
  @moduledoc "A means for accessing a service, e.g. a government office location, web site, or phone number."

  defstruct [
    :additional_type,
    :alternate_name,
    :available_language,
    :description,
    :disambiguating_description,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :processing_time,
    :provides_service,
    :same_as,
    :service_location,
    :service_phone,
    :service_postal_address,
    :service_sms_number,
    :service_url,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    available_language: "availableLanguage",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    processing_time: "processingTime",
    provides_service: "providesService",
    same_as: "sameAs",
    service_location: "serviceLocation",
    service_phone: "servicePhone",
    service_postal_address: "servicePostalAddress",
    service_sms_number: "serviceSmsNumber",
    service_url: "serviceUrl",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ServiceChannel", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ServiceChannel` struct."
  def new, do: %__MODULE__{}
end
