defmodule SchemaOrg.Schedule do
  @moduledoc "A schedule defines a repeating time period used to describe a regularly occurring `Event`. At a minimum a schedule will specify `repeatFrequency` which describes the interval between occurrences of the event. Additional information can be provided to specify the schedule more precisely.\n      This includes identifying the day(s) of the week or month when the recurring event will take place, in addition to its start and end time. Schedules may also\n      have start and end dates to indicate when they are active, e.g. to define a limited calendar of events."

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
end
