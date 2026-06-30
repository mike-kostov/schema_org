defmodule SchemaOrg.MedicalRiskFactor do
  @moduledoc "A risk factor is anything that increases a person's likelihood of developing or contracting a disease, medical condition, or complication."

  defstruct [
    :additional_type,
    :alternate_name,
    :code,
    :description,
    :disambiguating_description,
    :funding,
    :guideline,
    :identifier,
    :image,
    :increases_risk_of,
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :name,
    :owner,
    :potential_action,
    :recognizing_authority,
    :relevant_specialty,
    :same_as,
    :study,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    code: "code",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
    increases_risk_of: "increasesRiskOf",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    recognizing_authority: "recognizingAuthority",
    relevant_specialty: "relevantSpecialty",
    same_as: "sameAs",
    study: "study",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MedicalRiskFactor", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MedicalRiskFactor` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `code` property.\n\nA medical code for the entity, taken from a controlled vocabulary or ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc."
  def code(%__MODULE__{} = thing, value) do
    %{thing | code: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `funding` property.\n\nA [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."
  def funding(%__MODULE__{} = thing, value) do
    %{thing | funding: value}
  end

  @doc "Sets the Schema.org `guideline` property.\n\nA medical guideline related to this entity."
  def guideline(%__MODULE__{} = thing, value) do
    %{thing | guideline: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `increasesRiskOf` property.\n\nThe condition, complication, etc. influenced by this factor."
  def increases_risk_of(%__MODULE__{} = thing, value) do
    %{thing | increases_risk_of: value}
  end

  @doc "Sets the Schema.org `legalStatus` property.\n\nThe drug or supplement's legal status, including any controlled substance schedules that apply."
  def legal_status(%__MODULE__{} = thing, value) do
    %{thing | legal_status: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `medicineSystem` property.\n\nThe system of medicine that includes this MedicalEntity, for example 'evidence-based', 'homeopathic', 'chiropractic', etc."
  def medicine_system(%__MODULE__{} = thing, value) do
    %{thing | medicine_system: value}
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

  @doc "Sets the Schema.org `recognizingAuthority` property.\n\nIf applicable, the organization that officially recognizes this entity as part of its endorsed system of medicine."
  def recognizing_authority(%__MODULE__{} = thing, value) do
    %{thing | recognizing_authority: value}
  end

  @doc "Sets the Schema.org `relevantSpecialty` property.\n\nIf applicable, a medical specialty in which this entity is relevant."
  def relevant_specialty(%__MODULE__{} = thing, value) do
    %{thing | relevant_specialty: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `study` property.\n\nA medical study or trial related to this entity."
  def study(%__MODULE__{} = thing, value) do
    %{thing | study: value}
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
