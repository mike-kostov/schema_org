defmodule SchemaOrg.CDCPMDRecord do
  @moduledoc "A CDCPMDRecord is a data structure representing a record in a CDC tabular data format\n      used for hospital data reporting. See [documentation](/docs/cdc-covid.html) for details, and the linked CDC materials for authoritative\n      definitions used as the source here."

  defstruct [
    :additional_type,
    :alternate_name,
    :cvd_collection_date,
    :cvd_facility_county,
    :cvd_facility_id,
    :cvd_num_beds,
    :cvd_num_beds_occ,
    :cvd_num_c19_died,
    :cvd_num_c19_ho_pats,
    :cvd_num_c19_hosp_pats,
    :cvd_num_c19_mech_vent_pats,
    :cvd_num_c19_of_mech_vent_pats,
    :cvd_num_c19_overflow_pats,
    :cvd_num_icu_beds,
    :cvd_num_icu_beds_occ,
    :cvd_num_tot_beds,
    :cvd_num_vent,
    :cvd_num_vent_use,
    :date_posted,
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
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    cvd_collection_date: "cvdCollectionDate",
    cvd_facility_county: "cvdFacilityCounty",
    cvd_facility_id: "cvdFacilityId",
    cvd_num_beds: "cvdNumBeds",
    cvd_num_beds_occ: "cvdNumBedsOcc",
    cvd_num_c19_died: "cvdNumC19Died",
    cvd_num_c19_ho_pats: "cvdNumC19HOPats",
    cvd_num_c19_hosp_pats: "cvdNumC19HospPats",
    cvd_num_c19_mech_vent_pats: "cvdNumC19MechVentPats",
    cvd_num_c19_of_mech_vent_pats: "cvdNumC19OFMechVentPats",
    cvd_num_c19_overflow_pats: "cvdNumC19OverflowPats",
    cvd_num_icu_beds: "cvdNumICUBeds",
    cvd_num_icu_beds_occ: "cvdNumICUBedsOcc",
    cvd_num_tot_beds: "cvdNumTotBeds",
    cvd_num_vent: "cvdNumVent",
    cvd_num_vent_use: "cvdNumVentUse",
    date_posted: "datePosted",
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
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "CDCPMDRecord", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.CDCPMDRecord` struct."
  def new, do: %__MODULE__{}
end
