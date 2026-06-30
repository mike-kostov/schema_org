defmodule SchemaOrg.IPTCDigitalSourceEnumeration do
  @moduledoc "<a href=\"https://www.iptc.org/\">IPTC</a> \"Digital Source\" codes for use with the [[digitalSourceType]] property, providing information about the source for a digital media object.\nIn general these codes are not declared here to be mutually exclusive, although some combinations would be contradictory if applied simultaneously, or might be considered mutually incompatible by upstream maintainers of the definitions. See the IPTC <a href=\"https://www.iptc.org/std/photometadata/documentation/userguide/\">documentation</a>\n for <a href=\"https://cv.iptc.org/newscodes/digitalsourcetype/\">detailed definitions</a> of all terms."

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
    :subject_of,
    :superseded_by,
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
    subject_of: "subjectOf",
    superseded_by: "supersededBy",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "IPTCDigitalSourceEnumeration", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.IPTCDigitalSourceEnumeration` struct."
  def new, do: %__MODULE__{}
end
