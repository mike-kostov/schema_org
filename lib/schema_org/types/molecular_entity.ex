defmodule SchemaOrg.MolecularEntity do
  @moduledoc "Any constitutionally or isotopically distinct atom, molecule, ion, ion pair, radical, radical ion, complex, conformer etc., identifiable as a separately distinguishable entity."

  defstruct [
    :additional_type,
    :alternate_name,
    :associated_disease,
    :bio_chem_interaction,
    :bio_chem_similarity,
    :biological_role,
    :chemical_role,
    :description,
    :disambiguating_description,
    :funding,
    :has_bio_chem_entity_part,
    :has_molecular_function,
    :has_representation,
    :identifier,
    :image,
    :in_ch_i,
    :in_ch_i_key,
    :is_encoded_by_bio_chem_entity,
    :is_involved_in_biological_process,
    :is_located_in_subcellular_location,
    :is_part_of_bio_chem_entity,
    :iupac_name,
    :main_entity_of_page,
    :molecular_formula,
    :molecular_weight,
    :monoisotopic_molecular_weight,
    :name,
    :owner,
    :potential_action,
    :potential_use,
    :same_as,
    :smiles,
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
    chemical_role: "chemicalRole",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    funding: "funding",
    has_bio_chem_entity_part: "hasBioChemEntityPart",
    has_molecular_function: "hasMolecularFunction",
    has_representation: "hasRepresentation",
    identifier: "identifier",
    image: "image",
    in_ch_i: "inChI",
    in_ch_i_key: "inChIKey",
    is_encoded_by_bio_chem_entity: "isEncodedByBioChemEntity",
    is_involved_in_biological_process: "isInvolvedInBiologicalProcess",
    is_located_in_subcellular_location: "isLocatedInSubcellularLocation",
    is_part_of_bio_chem_entity: "isPartOfBioChemEntity",
    iupac_name: "iupacName",
    main_entity_of_page: "mainEntityOfPage",
    molecular_formula: "molecularFormula",
    molecular_weight: "molecularWeight",
    monoisotopic_molecular_weight: "monoisotopicMolecularWeight",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    potential_use: "potentialUse",
    same_as: "sameAs",
    smiles: "smiles",
    subject_of: "subjectOf",
    taxonomic_range: "taxonomicRange",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "MolecularEntity", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.MolecularEntity` struct."
  def new, do: %__MODULE__{}
end
