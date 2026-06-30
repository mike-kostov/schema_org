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
end
