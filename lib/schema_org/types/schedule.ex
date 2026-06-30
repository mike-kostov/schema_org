defmodule SchemaOrg.Schedule do
  @moduledoc "A schedule defines a repeating time period used to describe a regularly occurring [[Event]]. At a minimum a schedule will specify [[repeatFrequency]] which describes the interval between occurrences of the event. Additional information can be provided to specify the schedule more precisely.\n      This includes identifying the day(s) of the week or month when the recurring event will take place, in addition to its start and end time. Schedules may also\n      have start and end dates to indicate when they are active, e.g. to define a limited calendar of events."

  defstruct [
    :additional_type,
    :alternate_name,
    :by_day,
    :by_month,
    :by_month_day,
    :by_month_week,
    :description,
    :disambiguating_description,
    :duration,
    :end_date,
    :end_time,
    :except_date,
    :identifier,
    :image,
    :main_entity_of_page,
    :name,
    :owner,
    :potential_action,
    :repeat_count,
    :repeat_frequency,
    :same_as,
    :schedule_timezone,
    :start_date,
    :start_time,
    :subject_of,
    :url
  ]

  @json_keys %{
    additional_type: "additionalType",
    alternate_name: "alternateName",
    by_day: "byDay",
    by_month: "byMonth",
    by_month_day: "byMonthDay",
    by_month_week: "byMonthWeek",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    duration: "duration",
    end_date: "endDate",
    end_time: "endTime",
    except_date: "exceptDate",
    identifier: "identifier",
    image: "image",
    main_entity_of_page: "mainEntityOfPage",
    name: "name",
    owner: "owner",
    potential_action: "potentialAction",
    repeat_count: "repeatCount",
    repeat_frequency: "repeatFrequency",
    same_as: "sameAs",
    schedule_timezone: "scheduleTimezone",
    start_date: "startDate",
    start_time: "startTime",
    subject_of: "subjectOf",
    url: "url"
  }

  @doc false
  def __schema_org__, do: %{type: "Schedule", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Schedule` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `byDay` property.\n\nDefines the day(s) of the week on which a recurring [[Event]] takes place. May be specified using either [[DayOfWeek]], or alternatively [[Text]] conforming to iCal's syntax for byDay recurrence rules."
  def by_day(%__MODULE__{} = thing, value) do
    %{thing | by_day: value}
  end

  @doc "Sets the Schema.org `byMonth` property.\n\nDefines the month(s) of the year on which a recurring [[Event]] takes place. Specified as an [[Integer]] between 1-12. January is 1."
  def by_month(%__MODULE__{} = thing, value) do
    %{thing | by_month: value}
  end

  @doc "Sets the Schema.org `byMonthDay` property.\n\nDefines the day(s) of the month on which a recurring [[Event]] takes place. Specified as an [[Integer]] between 1-31."
  def by_month_day(%__MODULE__{} = thing, value) do
    %{thing | by_month_day: value}
  end

  @doc "Sets the Schema.org `byMonthWeek` property.\n\nDefines the week(s) of the month on which a recurring Event takes place. Specified as an Integer between 1-5. For clarity, byMonthWeek is best used in conjunction with byDay to indicate concepts like the first and third Mondays of a month."
  def by_month_week(%__MODULE__{} = thing, value) do
    %{thing | by_month_week: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `duration` property.\n\nThe duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."
  def duration(%__MODULE__{} = thing, value) do
    %{thing | duration: value}
  end

  @doc "Sets the Schema.org `endDate` property.\n\nThe end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."
  def end_date(%__MODULE__{} = thing, value) do
    %{thing | end_date: value}
  end

  @doc "Sets the Schema.org `endTime` property.\n\nThe endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."
  def end_time(%__MODULE__{} = thing, value) do
    %{thing | end_time: value}
  end

  @doc "Sets the Schema.org `exceptDate` property.\n\nDefines a [[Date]] or [[DateTime]] during which a scheduled [[Event]] will not take place. The property allows exceptions to\n      a [[Schedule]] to be specified. If an exception is specified as a [[DateTime]] then only the event that would have started at that specific date and time\n      should be excluded from the schedule. If an exception is specified as a [[Date]] then any event that is scheduled for that 24 hour period should be\n      excluded from the schedule. This allows a whole day to be excluded from the schedule without having to itemise every scheduled event."
  def except_date(%__MODULE__{} = thing, value) do
    %{thing | except_date: value}
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

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `repeatCount` property.\n\nDefines the number of times a recurring [[Event]] will take place."
  def repeat_count(%__MODULE__{} = thing, value) do
    %{thing | repeat_count: value}
  end

  @doc "Sets the Schema.org `repeatFrequency` property.\n\nDefines the frequency at which [[Event]]s will occur according to a schedule [[Schedule]]. The intervals between\n      events should be defined as a [[Duration]] of time."
  def repeat_frequency(%__MODULE__{} = thing, value) do
    %{thing | repeat_frequency: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `scheduleTimezone` property.\n\nIndicates the timezone for which the time(s) indicated in the [[Schedule]] are given. The value provided should be among those listed in the IANA Time Zone Database."
  def schedule_timezone(%__MODULE__{} = thing, value) do
    %{thing | schedule_timezone: value}
  end

  @doc "Sets the Schema.org `startDate` property.\n\nThe start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."
  def start_date(%__MODULE__{} = thing, value) do
    %{thing | start_date: value}
  end

  @doc "Sets the Schema.org `startTime` property.\n\nThe startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."
  def start_time(%__MODULE__{} = thing, value) do
    %{thing | start_time: value}
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
