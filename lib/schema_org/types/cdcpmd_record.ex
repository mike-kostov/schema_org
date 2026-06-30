defmodule SchemaOrg.CDCPMDRecord do
  @moduledoc "A CDCPMDRecord is a data structure representing a record in a CDC tabular data format\n      used for hospital data reporting. See [documentation](/docs/cdc-covid.html) for details, and the linked CDC materials for authoritative\n      definitions used as the source here.\n      "

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

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `cvdCollectionDate` property.\n\ncollectiondate - Date for which patient counts are reported."
  def cvd_collection_date(%__MODULE__{} = thing, value) do
    %{thing | cvd_collection_date: value}
  end

  @doc "Sets the Schema.org `cvdFacilityCounty` property.\n\nName of the County of the NHSN facility that this data record applies to. Use [[cvdFacilityId]] to identify the facility. To provide other details, [[healthcareReportingData]] can be used on a [[Hospital]] entry."
  def cvd_facility_county(%__MODULE__{} = thing, value) do
    %{thing | cvd_facility_county: value}
  end

  @doc "Sets the Schema.org `cvdFacilityId` property.\n\nIdentifier of the NHSN facility that this data record applies to. Use [[cvdFacilityCounty]] to indicate the county. To provide other details, [[healthcareReportingData]] can be used on a [[Hospital]] entry."
  def cvd_facility_id(%__MODULE__{} = thing, value) do
    %{thing | cvd_facility_id: value}
  end

  @doc "Sets the Schema.org `cvdNumBeds` property.\n\nnumbeds - HOSPITAL INPATIENT BEDS: Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients."
  def cvd_num_beds(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_beds: value}
  end

  @doc "Sets the Schema.org `cvdNumBedsOcc` property.\n\nnumbedsocc - HOSPITAL INPATIENT BED OCCUPANCY: Total number of staffed inpatient beds that are occupied."
  def cvd_num_beds_occ(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_beds_occ: value}
  end

  @doc "Sets the Schema.org `cvdNumC19Died` property.\n\nnumc19died - DEATHS: Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location."
  def cvd_num_c19_died(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_c19_died: value}
  end

  @doc "Sets the Schema.org `cvdNumC19HOPats` property.\n\nnumc19hopats - HOSPITAL ONSET: Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization."
  def cvd_num_c19_ho_pats(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_c19_ho_pats: value}
  end

  @doc "Sets the Schema.org `cvdNumC19HospPats` property.\n\nnumc19hosppats - HOSPITALIZED: Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19."
  def cvd_num_c19_hosp_pats(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_c19_hosp_pats: value}
  end

  @doc "Sets the Schema.org `cvdNumC19MechVentPats` property.\n\nnumc19mechventpats - HOSPITALIZED and VENTILATED: Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator."
  def cvd_num_c19_mech_vent_pats(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_c19_mech_vent_pats: value}
  end

  @doc "Sets the Schema.org `cvdNumC19OFMechVentPats` property.\n\nnumc19ofmechventpats - ED/OVERFLOW and VENTILATED: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator."
  def cvd_num_c19_of_mech_vent_pats(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_c19_of_mech_vent_pats: value}
  end

  @doc "Sets the Schema.org `cvdNumC19OverflowPats` property.\n\nnumc19overflowpats - ED/OVERFLOW: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed."
  def cvd_num_c19_overflow_pats(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_c19_overflow_pats: value}
  end

  @doc "Sets the Schema.org `cvdNumICUBeds` property.\n\nnumicubeds - ICU BEDS: Total number of staffed inpatient intensive care unit (ICU) beds."
  def cvd_num_icu_beds(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_icu_beds: value}
  end

  @doc "Sets the Schema.org `cvdNumICUBedsOcc` property.\n\nnumicubedsocc - ICU BED OCCUPANCY: Total number of staffed inpatient ICU beds that are occupied."
  def cvd_num_icu_beds_occ(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_icu_beds_occ: value}
  end

  @doc "Sets the Schema.org `cvdNumTotBeds` property.\n\nnumtotbeds - ALL HOSPITAL BEDS: Total number of all inpatient and outpatient beds, including all staffed, ICU, licensed, and overflow (surge) beds used for inpatients or outpatients."
  def cvd_num_tot_beds(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_tot_beds: value}
  end

  @doc "Sets the Schema.org `cvdNumVent` property.\n\nnumvent - MECHANICAL VENTILATORS: Total number of ventilators available."
  def cvd_num_vent(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_vent: value}
  end

  @doc "Sets the Schema.org `cvdNumVentUse` property.\n\nnumventuse - MECHANICAL VENTILATORS IN USE: Total number of ventilators in use."
  def cvd_num_vent_use(%__MODULE__{} = thing, value) do
    %{thing | cvd_num_vent_use: value}
  end

  @doc "Sets the Schema.org `datePosted` property.\n\nPublication date of an online listing."
  def date_posted(%__MODULE__{} = thing, value) do
    %{thing | date_posted: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
