defmodule SchemaOrg.JobPosting do
  @moduledoc "A listing that describes a job opening in a certain organization."

  defstruct [
    :additional_type,
    :alternate_name,
    :applicant_location_requirements,
    :application_contact,
    :base_salary,
    :benefits,
    :date_posted,
    :description,
    :direct_apply,
    :disambiguating_description,
    :education_requirements,
    :eligibility_to_work_requirement,
    :employer_overview,
    :employment_type,
    :employment_unit,
    :estimated_salary,
    :experience_in_place_of_education,
    :experience_requirements,
    :hiring_organization,
    :identifier,
    :image,
    :incentive_compensation,
    :incentives,
    :industry,
    :job_benefits,
    :job_duration,
    :job_immediate_start,
    :job_location,
    :job_location_type,
    :job_start_date,
    :main_entity_of_page,
    :name,
    :occupational_category,
    :owner,
    :physical_requirement,
    :potential_action,
    :qualifications,
    :relevant_occupation,
    :responsibilities,
    :salary_currency,
    :same_as,
    :security_clearance_requirement,
    :sensory_requirement,
    :skills,
    :special_commitments,
    :subject_of,
    :title,
    :total_job_openings,
    :url,
    :valid_through,
    :work_hours
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    applicant_location_requirements: "applicantLocationRequirements",
    application_contact: "applicationContact",
    base_salary: "baseSalary",
    benefits: "benefits",
    date_posted: "datePosted",
    description: "description",
    direct_apply: "directApply",
    disambiguating_description: "disambiguatingDescription",
    education_requirements: "educationRequirements",
    eligibility_to_work_requirement: "eligibilityToWorkRequirement",
    employer_overview: "employerOverview",
    employment_type: "employmentType",
    employment_unit: "employmentUnit",
    estimated_salary: "estimatedSalary",
    experience_in_place_of_education: "experienceInPlaceOfEducation",
    experience_requirements: "experienceRequirements",
    hiring_organization: "hiringOrganization",
    identifier: "identifier",
    image: "image",
    incentive_compensation: "incentiveCompensation",
    incentives: "incentives",
    industry: "industry",
    job_benefits: "jobBenefits",
    job_duration: "jobDuration",
    job_immediate_start: "jobImmediateStart",
    job_location: "jobLocation",
    job_location_type: "jobLocationType",
    job_start_date: "jobStartDate",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    occupational_category: "occupationalCategory",
    owner: "owner",
    physical_requirement: "physicalRequirement",
    potential_action: "potentialAction",
    qualifications: "qualifications",
    relevant_occupation: "relevantOccupation",
    responsibilities: "responsibilities",
    salary_currency: "salaryCurrency",
    same_as: "sameAs",
    security_clearance_requirement: "securityClearanceRequirement",
    sensory_requirement: "sensoryRequirement",
    skills: "skills",
    special_commitments: "specialCommitments",
    subject_of: "subjectOf",
    title: "title",
    total_job_openings: "totalJobOpenings",
    url: "url",
    valid_through: "validThrough",
    work_hours: "workHours"
  }

  @doc false
  def __schema_org__, do: %{type: "JobPosting", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.JobPosting` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `applicantLocationRequirements` property.\n\nThe location(s) applicants can apply from. This is usually used for telecommuting jobs where the applicant does not need to be in a physical office. Note: This should not be used for citizenship or work visa requirements."
  def applicant_location_requirements(%__MODULE__{} = thing, value) do
    %{thing | applicant_location_requirements: value}
  end

  @doc "Sets the Schema.org `applicationContact` property.\n\nContact details for further information relevant to this job posting."
  def application_contact(%__MODULE__{} = thing, value) do
    %{thing | application_contact: value}
  end

  @doc "Sets the Schema.org `baseSalary` property.\n\nThe base salary of the job or of an employee in an EmployeeRole."
  def base_salary(%__MODULE__{} = thing, value) do
    %{thing | base_salary: value}
  end

  @doc "Sets the Schema.org `benefits` property.\n\nDescription of benefits associated with the job."
  def benefits(%__MODULE__{} = thing, value) do
    %{thing | benefits: value}
  end

  @doc "Sets the Schema.org `datePosted` property.\n\nPublication date of an online listing."
  def date_posted(%__MODULE__{} = thing, value) do
    %{thing | date_posted: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `directApply` property.\n\nIndicates whether an [[url]] that is associated with a [[JobPosting]] enables direct application for the job, via the posting website. A job posting is considered to have directApply of [[True]] if an application process for the specified job can be directly initiated via the url(s) given (noting that e.g. multiple internet domains might nevertheless be involved at an implementation level). A value of [[False]] is appropriate if there is no clear path to applying directly online for the specified job, navigating directly from the JobPosting url(s) supplied."
  def direct_apply(%__MODULE__{} = thing, value) do
    %{thing | direct_apply: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `educationRequirements` property.\n\nEducational background needed for the position or Occupation."
  def education_requirements(%__MODULE__{} = thing, value) do
    %{thing | education_requirements: value}
  end

  @doc "Sets the Schema.org `eligibilityToWorkRequirement` property.\n\nThe legal requirements such as citizenship, visa and other documentation required for an applicant to this job."
  def eligibility_to_work_requirement(%__MODULE__{} = thing, value) do
    %{thing | eligibility_to_work_requirement: value}
  end

  @doc "Sets the Schema.org `employerOverview` property.\n\nA description of the employer, career opportunities and work environment for this position."
  def employer_overview(%__MODULE__{} = thing, value) do
    %{thing | employer_overview: value}
  end

  @doc "Sets the Schema.org `employmentType` property.\n\nType of employment (e.g. full-time, part-time, contract, temporary, seasonal, internship)."
  def employment_type(%__MODULE__{} = thing, value) do
    %{thing | employment_type: value}
  end

  @doc "Sets the Schema.org `employmentUnit` property.\n\nIndicates the department, unit and/or facility where the employee reports and/or in which the job is to be performed."
  def employment_unit(%__MODULE__{} = thing, value) do
    %{thing | employment_unit: value}
  end

  @doc "Sets the Schema.org `estimatedSalary` property.\n\nAn estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value."
  def estimated_salary(%__MODULE__{} = thing, value) do
    %{thing | estimated_salary: value}
  end

  @doc "Sets the Schema.org `experienceInPlaceOfEducation` property.\n\nIndicates whether a [[JobPosting]] will accept experience (as indicated by [[OccupationalExperienceRequirements]]) in place of its formal educational qualifications (as indicated by [[educationRequirements]]). If true, indicates that satisfying one of these requirements is sufficient."
  def experience_in_place_of_education(%__MODULE__{} = thing, value) do
    %{thing | experience_in_place_of_education: value}
  end

  @doc "Sets the Schema.org `experienceRequirements` property.\n\nDescription of skills and experience needed for the position or Occupation."
  def experience_requirements(%__MODULE__{} = thing, value) do
    %{thing | experience_requirements: value}
  end

  @doc "Sets the Schema.org `hiringOrganization` property.\n\nOrganization or Person offering the job position."
  def hiring_organization(%__MODULE__{} = thing, value) do
    %{thing | hiring_organization: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `incentiveCompensation` property.\n\nDescription of bonus and commission compensation aspects of the job."
  def incentive_compensation(%__MODULE__{} = thing, value) do
    %{thing | incentive_compensation: value}
  end

  @doc "Sets the Schema.org `incentives` property.\n\nDescription of bonus and commission compensation aspects of the job."
  def incentives(%__MODULE__{} = thing, value) do
    %{thing | incentives: value}
  end

  @doc "Sets the Schema.org `industry` property.\n\nThe industry associated with the job position."
  def industry(%__MODULE__{} = thing, value) do
    %{thing | industry: value}
  end

  @doc "Sets the Schema.org `jobBenefits` property.\n\nDescription of benefits associated with the job."
  def job_benefits(%__MODULE__{} = thing, value) do
    %{thing | job_benefits: value}
  end

  @doc "Sets the Schema.org `jobDuration` property.\n\nThe expected duration of an employment offer as advertised by the employer. Relevant for job postings that have a clearly defined period in mind such as seasonal work, substitutes for maternal leave or any other temporary employment."
  def job_duration(%__MODULE__{} = thing, value) do
    %{thing | job_duration: value}
  end

  @doc "Sets the Schema.org `jobImmediateStart` property.\n\nAn indicator as to whether a position is available for an immediate start."
  def job_immediate_start(%__MODULE__{} = thing, value) do
    %{thing | job_immediate_start: value}
  end

  @doc "Sets the Schema.org `jobLocation` property.\n\nA (typically single) geographic location associated with the job position."
  def job_location(%__MODULE__{} = thing, value) do
    %{thing | job_location: value}
  end

  @doc "Sets the Schema.org `jobLocationType` property.\n\nA description of the job location (e.g. TELECOMMUTE for telecommute jobs)."
  def job_location_type(%__MODULE__{} = thing, value) do
    %{thing | job_location_type: value}
  end

  @doc "Sets the Schema.org `jobStartDate` property.\n\nThe date on which a successful applicant for this job would be expected to start work. Choose a specific date in the future or use the jobImmediateStart property to indicate the position is to be filled as soon as possible."
  def job_start_date(%__MODULE__{} = thing, value) do
    %{thing | job_start_date: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `occupationalCategory` property.\n\nA category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\\n\nNote: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC."
  def occupational_category(%__MODULE__{} = thing, value) do
    %{thing | occupational_category: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `physicalRequirement` property.\n\nA description of the types of physical activity associated with the job. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term."
  def physical_requirement(%__MODULE__{} = thing, value) do
    %{thing | physical_requirement: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `qualifications` property.\n\nSpecific qualifications required for this role or Occupation."
  def qualifications(%__MODULE__{} = thing, value) do
    %{thing | qualifications: value}
  end

  @doc "Sets the Schema.org `relevantOccupation` property.\n\nThe Occupation for the JobPosting."
  def relevant_occupation(%__MODULE__{} = thing, value) do
    %{thing | relevant_occupation: value}
  end

  @doc "Sets the Schema.org `responsibilities` property.\n\nResponsibilities associated with this role or Occupation."
  def responsibilities(%__MODULE__{} = thing, value) do
    %{thing | responsibilities: value}
  end

  @doc "Sets the Schema.org `salaryCurrency` property.\n\nThe currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee."
  def salary_currency(%__MODULE__{} = thing, value) do
    %{thing | salary_currency: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `securityClearanceRequirement` property.\n\nA description of any security clearance requirements of the job."
  def security_clearance_requirement(%__MODULE__{} = thing, value) do
    %{thing | security_clearance_requirement: value}
  end

  @doc "Sets the Schema.org `sensoryRequirement` property.\n\nA description of any sensory requirements and levels necessary to function on the job, including hearing and vision. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term."
  def sensory_requirement(%__MODULE__{} = thing, value) do
    %{thing | sensory_requirement: value}
  end

  @doc "Sets the Schema.org `skills` property.\n\nA statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation."
  def skills(%__MODULE__{} = thing, value) do
    %{thing | skills: value}
  end

  @doc "Sets the Schema.org `specialCommitments` property.\n\nAny special commitments associated with this job posting. Valid entries include VeteranCommit, MilitarySpouseCommit, etc."
  def special_commitments(%__MODULE__{} = thing, value) do
    %{thing | special_commitments: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `title` property.\n\nThe title of the job."
  def title(%__MODULE__{} = thing, value) do
    %{thing | title: value}
  end

  @doc "Sets the Schema.org `totalJobOpenings` property.\n\nThe number of positions open for this job posting. Use a positive integer. Do not use if the number of positions is unclear or not known."
  def total_job_openings(%__MODULE__{} = thing, value) do
    %{thing | total_job_openings: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `validThrough` property.\n\nThe date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours."
  def valid_through(%__MODULE__{} = thing, value) do
    %{thing | valid_through: value}
  end

  @doc "Sets the Schema.org `workHours` property.\n\nThe typical working hours for this job (e.g. 1st shift, night shift, 8am-5pm)."
  def work_hours(%__MODULE__{} = thing, value) do
    %{thing | work_hours: value}
  end
end
