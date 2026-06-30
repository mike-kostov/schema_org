defmodule SchemaOrg.ChemicalSubstance do
  @moduledoc "A chemical substance is 'a portion of matter of constant composition, composed of molecular entities of the same type or of different types' (source: [ChEBI:59999](https://www.ebi.ac.uk/chebi/searchId.do?chebiId=59999))."

  defstruct [
    :additional_type,
    :alternate_name,
    :associated_disease,
    :bio_chem_interaction,
    :bio_chem_similarity,
    :biological_role,
    :chemical_composition,
    :chemical_role,
    :description,
    :disambiguating_description,
    :funding,
    :has_bio_chem_entity_part,
    :has_molecular_function,
    :has_representation,
    :identifier,
    :image,
    :is_encoded_by_bio_chem_entity,
    :is_involved_in_biological_process,
    :is_located_in_subcellular_location,
    :is_part_of_bio_chem_entity,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :potential_use,
    :same_as,
    :subject_of,
    :taxonomic_range,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    associated_disease: "associatedDisease",
    bio_chem_interaction: "bioChemInteraction",
    bio_chem_similarity: "bioChemSimilarity",
    biological_role: "biologicalRole",
    chemical_composition: "chemicalComposition",
    chemical_role: "chemicalRole",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    funding: "funding",
    has_bio_chem_entity_part: "hasBioChemEntityPart",
    has_molecular_function: "hasMolecularFunction",
    has_representation: "hasRepresentation",
    identifier: "identifier",
    image: "image",
    is_encoded_by_bio_chem_entity: "isEncodedByBioChemEntity",
    is_involved_in_biological_process: "isInvolvedInBiologicalProcess",
    is_located_in_subcellular_location: "isLocatedInSubcellularLocation",
    is_part_of_bio_chem_entity: "isPartOfBioChemEntity",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    potential_use: "potentialUse",
    same_as: "sameAs",
    subject_of: "subjectOf",
    taxonomic_range: "taxonomicRange",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ChemicalSubstance", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ChemicalSubstance` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `associatedDisease` property.\n\nDisease associated to this BioChemEntity. Such disease can be a MedicalCondition or a URL. If you want to add an evidence supporting the association, please use PropertyValue."
  def associated_disease(%__MODULE__{} = thing, value) do
    %{thing | associated_disease: value}
  end

  @doc "Sets the Schema.org `bioChemInteraction` property.\n\nA BioChemEntity that is known to interact with this item."
  def bio_chem_interaction(%__MODULE__{} = thing, value) do
    %{thing | bio_chem_interaction: value}
  end

  @doc "Sets the Schema.org `bioChemSimilarity` property.\n\nA similar BioChemEntity, e.g., obtained by fingerprint similarity algorithms."
  def bio_chem_similarity(%__MODULE__{} = thing, value) do
    %{thing | bio_chem_similarity: value}
  end

  @doc "Sets the Schema.org `biologicalRole` property.\n\nA role played by the BioChemEntity within a biological context."
  def biological_role(%__MODULE__{} = thing, value) do
    %{thing | biological_role: value}
  end

  @doc "Sets the Schema.org `chemicalComposition` property.\n\nThe chemical composition describes the identity and relative ratio of the chemical elements that make up the substance."
  def chemical_composition(%__MODULE__{} = thing, value) do
    %{thing | chemical_composition: value}
  end

  @doc "Sets the Schema.org `chemicalRole` property.\n\nA role played by the BioChemEntity within a chemical context."
  def chemical_role(%__MODULE__{} = thing, value) do
    %{thing | chemical_role: value}
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

  @doc "Sets the Schema.org `hasBioChemEntityPart` property.\n\nIndicates a BioChemEntity that (in some sense) has this BioChemEntity as a part. "
  def has_bio_chem_entity_part(%__MODULE__{} = thing, value) do
    %{thing | has_bio_chem_entity_part: value}
  end

  @doc "Sets the Schema.org `hasMolecularFunction` property.\n\nMolecular function performed by this BioChemEntity; please use PropertyValue if you want to include any evidence."
  def has_molecular_function(%__MODULE__{} = thing, value) do
    %{thing | has_molecular_function: value}
  end

  @doc "Sets the Schema.org `hasRepresentation` property.\n\nA common representation such as a protein sequence or chemical structure for this entity. For images use schema.org/image."
  def has_representation(%__MODULE__{} = thing, value) do
    %{thing | has_representation: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `isEncodedByBioChemEntity` property.\n\nAnother BioChemEntity encoding by this one."
  def is_encoded_by_bio_chem_entity(%__MODULE__{} = thing, value) do
    %{thing | is_encoded_by_bio_chem_entity: value}
  end

  @doc "Sets the Schema.org `isInvolvedInBiologicalProcess` property.\n\nBiological process this BioChemEntity is involved in; please use PropertyValue if you want to include any evidence."
  def is_involved_in_biological_process(%__MODULE__{} = thing, value) do
    %{thing | is_involved_in_biological_process: value}
  end

  @doc "Sets the Schema.org `isLocatedInSubcellularLocation` property.\n\nSubcellular location where this BioChemEntity is located; please use PropertyValue if you want to include any evidence."
  def is_located_in_subcellular_location(%__MODULE__{} = thing, value) do
    %{thing | is_located_in_subcellular_location: value}
  end

  @doc "Sets the Schema.org `isPartOfBioChemEntity` property.\n\nIndicates a BioChemEntity that is (in some sense) a part of this BioChemEntity. "
  def is_part_of_bio_chem_entity(%__MODULE__{} = thing, value) do
    %{thing | is_part_of_bio_chem_entity: value}
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

  @doc "Sets the Schema.org `potentialUse` property.\n\nIntended use of the BioChemEntity by humans."
  def potential_use(%__MODULE__{} = thing, value) do
    %{thing | potential_use: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `taxonomicRange` property.\n\nThe taxonomic grouping of the organism that expresses, encodes, or in some way related to the BioChemEntity."
  def taxonomic_range(%__MODULE__{} = thing, value) do
    %{thing | taxonomic_range: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
