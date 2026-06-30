defmodule SchemaOrg.HealthInsurancePlan do
  @moduledoc "A US-style health insurance plan, including PPOs, EPOs, and HMOs."

  defstruct [
    :additional_type,
    :alternate_name,
    :benefits_summary_url,
    :contact_point,
    :description,
    :disambiguating_description,
    :health_plan_drug_option,
    :health_plan_drug_tier,
    :health_plan_id,
    :health_plan_marketing_url,
    :identifier,
    :image,
    :includes_health_plan_formulary,
    :includes_health_plan_network,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :same_as,
    :subject_of,
    :url,
    :uses_health_plan_id_standard
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    benefits_summary_url: "benefitsSummaryUrl",
    contact_point: "contactPoint",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    health_plan_drug_option: "healthPlanDrugOption",
    health_plan_drug_tier: "healthPlanDrugTier",
    health_plan_id: "healthPlanId",
    health_plan_marketing_url: "healthPlanMarketingUrl",
    identifier: "identifier",
    image: "image",
    includes_health_plan_formulary: "includesHealthPlanFormulary",
    includes_health_plan_network: "includesHealthPlanNetwork",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    same_as: "sameAs",
    subject_of: "subjectOf",
    url: "url",
    uses_health_plan_id_standard: "usesHealthPlanIdStandard"
  }

  @doc false
  def __schema_org__, do: %{type: "HealthInsurancePlan", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.HealthInsurancePlan` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `benefitsSummaryUrl` property.\n\nThe URL that goes directly to the summary of benefits and coverage for the specific standard plan or plan variation."
  def benefits_summary_url(%__MODULE__{} = thing, value) do
    %{thing | benefits_summary_url: value}
  end

  @doc "Sets the Schema.org `contactPoint` property.\n\nA contact point for a person or organization."
  def contact_point(%__MODULE__{} = thing, value) do
    %{thing | contact_point: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `healthPlanDrugOption` property.\n\nTODO."
  def health_plan_drug_option(%__MODULE__{} = thing, value) do
    %{thing | health_plan_drug_option: value}
  end

  @doc "Sets the Schema.org `healthPlanDrugTier` property.\n\nThe tier(s) of drugs offered by this formulary or insurance plan."
  def health_plan_drug_tier(%__MODULE__{} = thing, value) do
    %{thing | health_plan_drug_tier: value}
  end

  @doc "Sets the Schema.org `healthPlanId` property.\n\nThe 14-character, HIOS-generated Plan ID number. (Plan IDs must be unique, even across different markets.)"
  def health_plan_id(%__MODULE__{} = thing, value) do
    %{thing | health_plan_id: value}
  end

  @doc "Sets the Schema.org `healthPlanMarketingUrl` property.\n\nThe URL that goes directly to the plan brochure for the specific standard plan or plan variation."
  def health_plan_marketing_url(%__MODULE__{} = thing, value) do
    %{thing | health_plan_marketing_url: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `includesHealthPlanFormulary` property.\n\nFormularies covered by this plan."
  def includes_health_plan_formulary(%__MODULE__{} = thing, value) do
    %{thing | includes_health_plan_formulary: value}
  end

  @doc "Sets the Schema.org `includesHealthPlanNetwork` property.\n\nNetworks covered by this plan."
  def includes_health_plan_network(%__MODULE__{} = thing, value) do
    %{thing | includes_health_plan_network: value}
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

  @doc "Sets the Schema.org `usesHealthPlanIdStandard` property.\n\nThe standard for interpreting the Plan ID. The preferred is \"HIOS\". See the Centers for Medicare & Medicaid Services for more details."
  def uses_health_plan_id_standard(%__MODULE__{} = thing, value) do
    %{thing | uses_health_plan_id_standard: value}
  end
end
