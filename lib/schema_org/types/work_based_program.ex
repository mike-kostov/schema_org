defmodule SchemaOrg.WorkBasedProgram do
  @moduledoc "A program with both an educational and employment component. Typically based at a workplace and structured around work-based learning, with the aim of instilling competencies related to an occupation. WorkBasedProgram is used to distinguish programs such as apprenticeships from school, college or other classroom based educational programs."

  defstruct [
    :additional_type,
    :alternate_name,
    :application_deadline,
    :application_start_date,
    :day_of_week,
    :description,
    :disambiguating_description,
    :educational_credential_awarded,
    :educational_program_mode,
    :end_date,
    :financial_aid_eligible,
    :has_course,
    :identifier,
    :image,
    :main_entity_of_page,
    :maximum_enrollment,
    :name,
    :number_of_credits,
    :occupational_category,
    :occupational_credential_awarded,
    :offers,
    :owner,
    :potential_action,
    :program_prerequisites,
    :program_type,
    :provider,
    :salary_upon_completion,
    :same_as,
    :start_date,
    :subject_of,
    :term_duration,
    :terms_per_year,
    :time_of_day,
    :time_to_complete,
    :training_salary,
    :typical_credits_per_term,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    application_deadline: "applicationDeadline",
    application_start_date: "applicationStartDate",
    day_of_week: "dayOfWeek",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    educational_credential_awarded: "educationalCredentialAwarded",
    educational_program_mode: "educationalProgramMode",
    end_date: "endDate",
    financial_aid_eligible: "financialAidEligible",
    has_course: "hasCourse",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    maximum_enrollment: "maximumEnrollment",
    name: "name",
    number_of_credits: "numberOfCredits",
    occupational_category: "occupationalCategory",
    occupational_credential_awarded: "occupationalCredentialAwarded",
    offers: "offers",
    owner: "owner",
    potential_action: "potentialAction",
    program_prerequisites: "programPrerequisites",
    program_type: "programType",
    provider: "provider",
    salary_upon_completion: "salaryUponCompletion",
    same_as: "sameAs",
    start_date: "startDate",
    subject_of: "subjectOf",
    term_duration: "termDuration",
    terms_per_year: "termsPerYear",
    time_of_day: "timeOfDay",
    time_to_complete: "timeToComplete",
    training_salary: "trainingSalary",
    typical_credits_per_term: "typicalCreditsPerTerm",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "WorkBasedProgram", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.WorkBasedProgram` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `applicationDeadline` property.\n\nThe date on which the program stops collecting applications for the next enrollment cycle. Flexible application deadlines (for example, a program with rolling admissions) can be described in a textual string, rather than as a DateTime."
  def application_deadline(%__MODULE__{} = thing, value) do
    %{thing | application_deadline: value}
  end

  @doc "Sets the Schema.org `applicationStartDate` property.\n\nThe date at which the program begins collecting applications for the next enrollment cycle."
  def application_start_date(%__MODULE__{} = thing, value) do
    %{thing | application_start_date: value}
  end

  @doc "Sets the Schema.org `dayOfWeek` property.\n\nThe day of the week for which these opening hours are valid."
  def day_of_week(%__MODULE__{} = thing, value) do
    %{thing | day_of_week: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `educationalCredentialAwarded` property.\n\nA description of the qualification, award, certificate, diploma or other educational credential awarded as a consequence of successful completion of this course or program."
  def educational_credential_awarded(%__MODULE__{} = thing, value) do
    %{thing | educational_credential_awarded: value}
  end

  @doc "Sets the Schema.org `educationalProgramMode` property.\n\nSimilar to courseMode, the medium or means of delivery of the program as a whole. The value may either be a text label (e.g. \"online\", \"onsite\" or \"blended\"; \"synchronous\" or \"asynchronous\"; \"full-time\" or \"part-time\") or a URL reference to a term from a controlled vocabulary (e.g. https://ceds.ed.gov/element/001311#Asynchronous )."
  def educational_program_mode(%__MODULE__{} = thing, value) do
    %{thing | educational_program_mode: value}
  end

  @doc "Sets the Schema.org `endDate` property.\n\nThe end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."
  def end_date(%__MODULE__{} = thing, value) do
    %{thing | end_date: value}
  end

  @doc "Sets the Schema.org `financialAidEligible` property.\n\nA financial aid type or program which students may use to pay for tuition or fees associated with the program."
  def financial_aid_eligible(%__MODULE__{} = thing, value) do
    %{thing | financial_aid_eligible: value}
  end

  @doc "Sets the Schema.org `hasCourse` property.\n\nA course or class that is one of the learning opportunities that constitute an educational / occupational program. No information is implied about whether the course is mandatory or optional; no guarantee is implied about whether the course will be available to everyone on the program."
  def has_course(%__MODULE__{} = thing, value) do
    %{thing | has_course: value}
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

  @doc "Sets the Schema.org `maximumEnrollment` property.\n\nThe maximum number of students who may be enrolled in the program."
  def maximum_enrollment(%__MODULE__{} = thing, value) do
    %{thing | maximum_enrollment: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `numberOfCredits` property.\n\nThe number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram."
  def number_of_credits(%__MODULE__{} = thing, value) do
    %{thing | number_of_credits: value}
  end

  @doc "Sets the Schema.org `occupationalCategory` property.\n\nA category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\\n\nNote: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC."
  def occupational_category(%__MODULE__{} = thing, value) do
    %{thing | occupational_category: value}
  end

  @doc "Sets the Schema.org `occupationalCredentialAwarded` property.\n\nA description of the qualification, award, certificate, diploma or other occupational credential awarded as a consequence of successful completion of this course or program."
  def occupational_credential_awarded(%__MODULE__{} = thing, value) do
    %{thing | occupational_credential_awarded: value}
  end

  @doc "Sets the Schema.org `offers` property.\n\nAn offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.\n      "
  def offers(%__MODULE__{} = thing, value) do
    %{thing | offers: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `programPrerequisites` property.\n\nPrerequisites for enrolling in the program."
  def program_prerequisites(%__MODULE__{} = thing, value) do
    %{thing | program_prerequisites: value}
  end

  @doc "Sets the Schema.org `programType` property.\n\nThe type of educational or occupational program. For example, classroom, internship, alternance, etc."
  def program_type(%__MODULE__{} = thing, value) do
    %{thing | program_type: value}
  end

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `salaryUponCompletion` property.\n\nThe expected salary upon completing the training."
  def salary_upon_completion(%__MODULE__{} = thing, value) do
    %{thing | salary_upon_completion: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `startDate` property.\n\nThe start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."
  def start_date(%__MODULE__{} = thing, value) do
    %{thing | start_date: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `termDuration` property.\n\nThe amount of time in a term as defined by the institution. A term is a length of time where students take one or more classes. Semesters and quarters are common units for term."
  def term_duration(%__MODULE__{} = thing, value) do
    %{thing | term_duration: value}
  end

  @doc "Sets the Schema.org `termsPerYear` property.\n\nThe number of times terms of study are offered per year. Semesters and quarters are common units for term. For example, if the student can only take 2 semesters for the program in one year, then termsPerYear should be 2."
  def terms_per_year(%__MODULE__{} = thing, value) do
    %{thing | terms_per_year: value}
  end

  @doc "Sets the Schema.org `timeOfDay` property.\n\nThe time of day the program normally runs. For example, \"evenings\"."
  def time_of_day(%__MODULE__{} = thing, value) do
    %{thing | time_of_day: value}
  end

  @doc "Sets the Schema.org `timeToComplete` property.\n\nThe expected length of time to complete the program if attending full-time."
  def time_to_complete(%__MODULE__{} = thing, value) do
    %{thing | time_to_complete: value}
  end

  @doc "Sets the Schema.org `trainingSalary` property.\n\nThe estimated salary earned while in the program."
  def training_salary(%__MODULE__{} = thing, value) do
    %{thing | training_salary: value}
  end

  @doc "Sets the Schema.org `typicalCreditsPerTerm` property.\n\nThe number of credits or units a full-time student would be expected to take in 1 term however 'term' is defined by the institution."
  def typical_credits_per_term(%__MODULE__{} = thing, value) do
    %{thing | typical_credits_per_term: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
