defmodule SchemaOrg.Gene do
  @moduledoc "A discrete unit of inheritance which affects one or more biological traits (Source: [https://en.wikipedia.org/wiki/Gene](https://en.wikipedia.org/wiki/Gene)). Examples include FOXP2 (Forkhead box protein P2), SCARNA21 (small Cajal body-specific RNA 21), A- (agouti genotype)."

  defstruct [
    :additional_type,
    :alternate_name,
    :alternative_of,
    :associated_disease,
    :bio_chem_interaction,
    :bio_chem_similarity,
    :biological_role,
    :description,
    :disambiguating_description,
    :encodes_bio_chem_entity,
    :expressed_in,
    :funding,
    :has_bio_chem_entity_part,
    :has_bio_polymer_sequence,
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
    :same_as,
    :subject_of,
    :taxonomic_range,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    alternative_of: "alternativeOf",
    associated_disease: "associatedDisease",
    bio_chem_interaction: "bioChemInteraction",
    bio_chem_similarity: "bioChemSimilarity",
    biological_role: "biologicalRole",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    encodes_bio_chem_entity: "encodesBioChemEntity",
    expressed_in: "expressedIn",
    funding: "funding",
    has_bio_chem_entity_part: "hasBioChemEntityPart",
    has_bio_polymer_sequence: "hasBioPolymerSequence",
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
    same_as: "sameAs",
    subject_of: "subjectOf",
    taxonomic_range: "taxonomicRange",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Gene", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Gene` struct."
  def new, do: %__MODULE__{}
end
