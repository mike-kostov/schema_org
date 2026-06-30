defmodule SchemaOrg.ExerciseAction do
  @moduledoc "The act of participating in exertive activity for the purposes of improving health and fitness."

  defstruct [
    :action_process,
    :action_status,
    :additional_type,
    :agent,
    :alternate_name,
    :audience,
    :course,
    :description,
    :diet,
    :disambiguating_description,
    :distance,
    :end_time,
    :error,
    :event,
    :exercise_course,
    :exercise_plan,
    :exercise_related_diet,
    :exercise_type,
    :from_location,
    :identifier,
    :image,
    :instrument,
    :location,
    :main_entity_of_page,
    :name,
    :object,
    :opponent,
    :owner,
    :participant,
    :potential_action,
    :provider,
    :result,
    :same_as,
    :sports_activity_location,
    :sports_event,
    :sports_team,
    :start_time,
    :subject_of,
    :target,
    :to_location,
    :url
  ]

  @json_keys %{
    action_process: "actionProcess",
    action_status: "actionStatus",
    additional_type: "additionalType",
    agent: "agent",
    alternate_name: "alternateName",
    audience: "audience",
    course: "course",
    description: "description",
    diet: "diet",
    disambiguating_description: "disambiguatingDescription",
    distance: "distance",
    end_time: "endTime",
    error: "error",
    event: "event",
    exercise_course: "exerciseCourse",
    exercise_plan: "exercisePlan",
    exercise_related_diet: "exerciseRelatedDiet",
    exercise_type: "exerciseType",
    from_location: "fromLocation",
    identifier: "identifier",
    image: "image",
    instrument: "instrument",
    location: "location",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    object: "object",
    opponent: "opponent",
    owner: "owner",
    participant: "participant",
    potential_action: "potentialAction",
    provider: "provider",
    result: "result",
    same_as: "sameAs",
    sports_activity_location: "sportsActivityLocation",
    sports_event: "sportsEvent",
    sports_team: "sportsTeam",
    start_time: "startTime",
    subject_of: "subjectOf",
    target: "target",
    to_location: "toLocation",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "ExerciseAction", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ExerciseAction` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `actionProcess` property.\n\nDescription of the process by which the action was performed."
  def action_process(%__MODULE__{} = thing, value) do
    %{thing | action_process: value}
  end

  @doc "Sets the Schema.org `actionStatus` property.\n\nIndicates the current disposition of the Action."
  def action_status(%__MODULE__{} = thing, value) do
    %{thing | action_status: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `agent` property.\n\nThe direct performer or driver of the action (animate or inanimate). E.g. *John* wrote a book."
  def agent(%__MODULE__{} = thing, value) do
    %{thing | agent: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `audience` property.\n\nAn intended audience, i.e. a group for whom something was created."
  def audience(%__MODULE__{} = thing, value) do
    %{thing | audience: value}
  end

  @doc "Sets the Schema.org `course` property.\n\nA sub property of location. The course where this action was taken."
  def course(%__MODULE__{} = thing, value) do
    %{thing | course: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `diet` property.\n\nA sub property of instrument. The diet used in this action."
  def diet(%__MODULE__{} = thing, value) do
    %{thing | diet: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `distance` property.\n\nThe distance travelled, e.g. exercising or travelling."
  def distance(%__MODULE__{} = thing, value) do
    %{thing | distance: value}
  end

  @doc "Sets the Schema.org `endTime` property.\n\nThe endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."
  def end_time(%__MODULE__{} = thing, value) do
    %{thing | end_time: value}
  end

  @doc "Sets the Schema.org `error` property.\n\nFor failed actions, more information on the cause of the failure. Consider using the Error type."
  def error(%__MODULE__{} = thing, value) do
    %{thing | error: value}
  end

  @doc "Sets the Schema.org `event` property.\n\nUpcoming or past event associated with this place, organization, or action."
  def event(%__MODULE__{} = thing, value) do
    %{thing | event: value}
  end

  @doc "Sets the Schema.org `exerciseCourse` property.\n\nA sub property of location. The course where this action was taken."
  def exercise_course(%__MODULE__{} = thing, value) do
    %{thing | exercise_course: value}
  end

  @doc "Sets the Schema.org `exercisePlan` property.\n\nA sub property of instrument. The exercise plan used on this action."
  def exercise_plan(%__MODULE__{} = thing, value) do
    %{thing | exercise_plan: value}
  end

  @doc "Sets the Schema.org `exerciseRelatedDiet` property.\n\nA sub property of instrument. The diet used in this action."
  def exercise_related_diet(%__MODULE__{} = thing, value) do
    %{thing | exercise_related_diet: value}
  end

  @doc "Sets the Schema.org `exerciseType` property.\n\nType(s) of exercise or activity, such as strength training, flexibility training, aerobics, cardiac rehabilitation, etc."
  def exercise_type(%__MODULE__{} = thing, value) do
    %{thing | exercise_type: value}
  end

  @doc "Sets the Schema.org `fromLocation` property.\n\nA sub property of location. The original location of the object or the agent before the action."
  def from_location(%__MODULE__{} = thing, value) do
    %{thing | from_location: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `instrument` property.\n\nThe object that helped the agent perform the action. E.g. John wrote a book with *a pen*."
  def instrument(%__MODULE__{} = thing, value) do
    %{thing | instrument: value}
  end

  @doc "Sets the Schema.org `location` property.\n\nThe location of, for example, where an event is happening, where an organization is located, or where an action takes place."
  def location(%__MODULE__{} = thing, value) do
    %{thing | location: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `object` property.\n\nThe object upon which the action is carried out, whose state is kept intact or changed. Also known as the semantic roles patient, affected or undergoer (which change their state) or theme (which doesn't). E.g. John read *a book*."
  def object(%__MODULE__{} = thing, value) do
    %{thing | object: value}
  end

  @doc "Sets the Schema.org `opponent` property.\n\nA sub property of participant. The opponent on this action."
  def opponent(%__MODULE__{} = thing, value) do
    %{thing | opponent: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `participant` property.\n\nOther co-agents that participated in the action indirectly. E.g. John wrote a book with *Steve*."
  def participant(%__MODULE__{} = thing, value) do
    %{thing | participant: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `result` property.\n\nThe result produced in the action. E.g. John wrote *a book*."
  def result(%__MODULE__{} = thing, value) do
    %{thing | result: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `sportsActivityLocation` property.\n\nA sub property of location. The sports activity location where this action occurred."
  def sports_activity_location(%__MODULE__{} = thing, value) do
    %{thing | sports_activity_location: value}
  end

  @doc "Sets the Schema.org `sportsEvent` property.\n\nA sub property of location. The sports event where this action occurred."
  def sports_event(%__MODULE__{} = thing, value) do
    %{thing | sports_event: value}
  end

  @doc "Sets the Schema.org `sportsTeam` property.\n\nA sub property of participant. The sports team that participated on this action."
  def sports_team(%__MODULE__{} = thing, value) do
    %{thing | sports_team: value}
  end

  @doc "Sets the Schema.org `startTime` property.\n\nThe startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."
  def start_time(%__MODULE__{} = thing, value) do
    %{thing | start_time: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `target` property.\n\nIndicates a target EntryPoint, or url, for an Action."
  def target(%__MODULE__{} = thing, value) do
    %{thing | target: value}
  end

  @doc "Sets the Schema.org `toLocation` property.\n\nA sub property of location. The final location of the object or the agent after the action."
  def to_location(%__MODULE__{} = thing, value) do
    %{thing | to_location: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end
end
