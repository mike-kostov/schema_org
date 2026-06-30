defmodule SchemaOrg.InfectiousDisease do
  @moduledoc "An infectious disease is a clinically evident human disease resulting from the presence of pathogenic microbial agents, like pathogenic viruses, pathogenic bacteria, fungi, protozoa, multicellular parasites, and prions. To be considered an infectious disease, such pathogens are known to be able to cause this disease."

  defstruct [
    :additional_type,
    :alternate_name,
    :associated_anatomy,
    :cause,
    :code,
    :description,
    :differential_diagnosis,
    :disambiguating_description,
    :drug,
    :epidemiology,
    :expected_prognosis,
    :funding,
    :guideline,
    :identifier,
    :image,
    :infectious_agent,
    :infectious_agent_class,
    :legal_status,
    :main_entity_of_page,
    :medicine_system,
    :name,
    :natural_progression,
    :owner,
    :pathophysiology,
    :possible_complication,
    :possible_treatment,
    :potential_action,
    :primary_prevention,
    :recognizing_authority,
    :relevant_specialty,
    :risk_factor,
    :same_as,
    :secondary_prevention,
    :sign_or_symptom,
    :stage,
    :status,
    :study,
    :subject_of,
    :transmission_method,
    :typical_test,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    associated_anatomy: "associatedAnatomy",
    cause: "cause",
    code: "code",
    description: "description",
    differential_diagnosis: "differentialDiagnosis",
    disambiguating_description: "disambiguatingDescription",
    drug: "drug",
    epidemiology: "epidemiology",
    expected_prognosis: "expectedPrognosis",
    funding: "funding",
    guideline: "guideline",
    identifier: "identifier",
    image: "image",
    infectious_agent: "infectiousAgent",
    infectious_agent_class: "infectiousAgentClass",
    legal_status: "legalStatus",
    main_entity_of_page: "mainEntityOfPage",
    medicine_system: "medicineSystem",
    name: "name",
    natural_progression: "naturalProgression",
    owner: "owner",
    pathophysiology: "pathophysiology",
    possible_complication: "possibleComplication",
    possible_treatment: "possibleTreatment",
    potential_action: "potentialAction",
    primary_prevention: "primaryPrevention",
    recognizing_authority: "recognizingAuthority",
    relevant_specialty: "relevantSpecialty",
    risk_factor: "riskFactor",
    same_as: "sameAs",
    secondary_prevention: "secondaryPrevention",
    sign_or_symptom: "signOrSymptom",
    stage: "stage",
    status: "status",
    study: "study",
    subject_of: "subjectOf",
    transmission_method: "transmissionMethod",
    typical_test: "typicalTest",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "InfectiousDisease", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.InfectiousDisease` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `associatedAnatomy` property.\n\nThe anatomy of the underlying organ system or structures associated with this entity."
  def associated_anatomy(%__MODULE__{} = thing, value) do
    %{thing | associated_anatomy: value}
  end

  @doc "Sets the Schema.org `cause` property.\n\nThe cause of a medical condition."
  def cause(%__MODULE__{} = thing, value) do
    %{thing | cause: value}
  end

  @doc "Sets the Schema.org `code` property.\n\nA medical code for the entity, taken from a controlled vocabulary or ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc."
  def code(%__MODULE__{} = thing, value) do
    %{thing | code: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `differentialDiagnosis` property.\n\nOne of a set of differential diagnoses for the condition. Specifically, a closely-related or competing diagnosis typically considered later in the cognitive process whereby this medical condition is distinguished from others most likely responsible for a similar collection of signs and symptoms to reach the most parsimonious diagnosis or diagnoses in a patient."
  def differential_diagnosis(%__MODULE__{} = thing, value) do
    %{thing | differential_diagnosis: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `drug` property.\n\nSpecifying a drug or medicine used in a medication procedure."
  def drug(%__MODULE__{} = thing, value) do
    %{thing | drug: value}
  end

  @doc "Sets the Schema.org `epidemiology` property.\n\nThe characteristics of associated patients, such as age, gender, race etc."
  def epidemiology(%__MODULE__{} = thing, value) do
    %{thing | epidemiology: value}
  end

  @doc "Sets the Schema.org `expectedPrognosis` property.\n\nThe likely outcome in either the short term or long term of the medical condition."
  def expected_prognosis(%__MODULE__{} = thing, value) do
    %{thing | expected_prognosis: value}
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

  @doc "Sets the Schema.org `infectiousAgent` property.\n\nThe actual infectious agent, such as a specific bacterium."
  def infectious_agent(%__MODULE__{} = thing, value) do
    %{thing | infectious_agent: value}
  end

  @doc "Sets the Schema.org `infectiousAgentClass` property.\n\nThe class of infectious agent (bacteria, prion, etc.) that causes the disease."
  def infectious_agent_class(%__MODULE__{} = thing, value) do
    %{thing | infectious_agent_class: value}
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

  @doc "Sets the Schema.org `naturalProgression` property.\n\nThe expected progression of the condition if it is not treated and allowed to progress naturally."
  def natural_progression(%__MODULE__{} = thing, value) do
    %{thing | natural_progression: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `pathophysiology` property.\n\nChanges in the normal mechanical, physical, and biochemical functions that are associated with this activity or condition."
  def pathophysiology(%__MODULE__{} = thing, value) do
    %{thing | pathophysiology: value}
  end

  @doc "Sets the Schema.org `possibleComplication` property.\n\nA possible unexpected and unfavorable evolution of a medical condition. Complications may include worsening of the signs or symptoms of the disease, extension of the condition to other organ systems, etc."
  def possible_complication(%__MODULE__{} = thing, value) do
    %{thing | possible_complication: value}
  end

  @doc "Sets the Schema.org `possibleTreatment` property.\n\nA possible treatment to address this condition, sign or symptom."
  def possible_treatment(%__MODULE__{} = thing, value) do
    %{thing | possible_treatment: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `primaryPrevention` property.\n\nA preventative therapy used to prevent an initial occurrence of the medical condition, such as vaccination."
  def primary_prevention(%__MODULE__{} = thing, value) do
    %{thing | primary_prevention: value}
  end

  @doc "Sets the Schema.org `recognizingAuthority` property.\n\nIf applicable, the organization that officially recognizes this entity as part of its endorsed system of medicine."
  def recognizing_authority(%__MODULE__{} = thing, value) do
    %{thing | recognizing_authority: value}
  end

  @doc "Sets the Schema.org `relevantSpecialty` property.\n\nIf applicable, a medical specialty in which this entity is relevant."
  def relevant_specialty(%__MODULE__{} = thing, value) do
    %{thing | relevant_specialty: value}
  end

  @doc "Sets the Schema.org `riskFactor` property.\n\nA modifiable or non-modifiable factor that increases the risk of a patient contracting this condition, e.g. age,  coexisting condition."
  def risk_factor(%__MODULE__{} = thing, value) do
    %{thing | risk_factor: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `secondaryPrevention` property.\n\nA preventative therapy used to prevent reoccurrence of the medical condition after an initial episode of the condition."
  def secondary_prevention(%__MODULE__{} = thing, value) do
    %{thing | secondary_prevention: value}
  end

  @doc "Sets the Schema.org `signOrSymptom` property.\n\nA sign or symptom of this condition. Signs are objective or physically observable manifestations of the medical condition while symptoms are the subjective experience of the medical condition."
  def sign_or_symptom(%__MODULE__{} = thing, value) do
    %{thing | sign_or_symptom: value}
  end

  @doc "Sets the Schema.org `stage` property.\n\nThe stage of the condition, if applicable."
  def stage(%__MODULE__{} = thing, value) do
    %{thing | stage: value}
  end

  @doc "Sets the Schema.org `status` property.\n\nThe status of the study (enumerated)."
  def status(%__MODULE__{} = thing, value) do
    %{thing | status: value}
  end

  @doc "Sets the Schema.org `study` property.\n\nA medical study or trial related to this entity."
  def study(%__MODULE__{} = thing, value) do
    %{thing | study: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `transmissionMethod` property.\n\nHow the disease spreads, either as a route or vector, for example 'direct contact', 'Aedes aegypti', etc."
  def transmission_method(%__MODULE__{} = thing, value) do
    %{thing | transmission_method: value}
  end

  @doc "Sets the Schema.org `typicalTest` property.\n\nA medical test typically performed given this condition."
  def typical_test(%__MODULE__{} = thing, value) do
    %{thing | typical_test: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
