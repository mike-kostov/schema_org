defmodule SchemaOrg.Occupation do
  @moduledoc "A profession, may involve prolonged training and/or a formal qualification."

  defstruct [
    :additional_type,
    :alternate_name,
    :description,
    :disambiguating_description,
    :education_requirements,
    :estimated_salary,
    :experience_requirements,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :occupation_location,
    :occupational_category,
    :owner,
    :potential_action,
    :qualifications,
    :responsibilities,
    :same_as,
    :skills,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    education_requirements: "educationRequirements",
    estimated_salary: "estimatedSalary",
    experience_requirements: "experienceRequirements",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    occupation_location: "occupationLocation",
    occupational_category: "occupationalCategory",
    owner: "owner",
    potential_action: "potentialAction",
    qualifications: "qualifications",
    responsibilities: "responsibilities",
    same_as: "sameAs",
    skills: "skills",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Occupation", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Occupation` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `educationRequirements` property.\n\nEducational background needed for the position or Occupation."
  def education_requirements(%__MODULE__{} = thing, value) do
    %{thing | education_requirements: value}
  end

  @doc "Sets the Schema.org `estimatedSalary` property.\n\nAn estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value."
  def estimated_salary(%__MODULE__{} = thing, value) do
    %{thing | estimated_salary: value}
  end

  @doc "Sets the Schema.org `experienceRequirements` property.\n\nDescription of skills and experience needed for the position or Occupation."
  def experience_requirements(%__MODULE__{} = thing, value) do
    %{thing | experience_requirements: value}
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

  @doc "Sets the Schema.org `occupationLocation` property.\n\n The region/country for which this occupational description is appropriate. Note that educational requirements and qualifications can vary between jurisdictions."
  def occupation_location(%__MODULE__{} = thing, value) do
    %{thing | occupation_location: value}
  end

  @doc "Sets the Schema.org `occupationalCategory` property.\n\nA category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\\n\nNote: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC."
  def occupational_category(%__MODULE__{} = thing, value) do
    %{thing | occupational_category: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `qualifications` property.\n\nSpecific qualifications required for this role or Occupation."
  def qualifications(%__MODULE__{} = thing, value) do
    %{thing | qualifications: value}
  end

  @doc "Sets the Schema.org `responsibilities` property.\n\nResponsibilities associated with this role or Occupation."
  def responsibilities(%__MODULE__{} = thing, value) do
    %{thing | responsibilities: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `skills` property.\n\nA statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation."
  def skills(%__MODULE__{} = thing, value) do
    %{thing | skills: value}
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
