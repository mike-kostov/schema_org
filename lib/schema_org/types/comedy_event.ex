defmodule SchemaOrg.ComedyEvent do
  @moduledoc "Event type: Comedy event."

  defstruct [
    :about,
    :actor,
    :additional_type,
    :aggregate_rating,
    :alternate_name,
    :attendee,
    :attendees,
    :audience,
    :composer,
    :contributor,
    :description,
    :director,
    :disambiguating_description,
    :door_time,
    :duration,
    :end_date,
    :event_attendance_mode,
    :event_schedule,
    :event_status,
    :funder,
    :funding,
    :has_participation_offer,
    :has_sponsorship_offer,
    :identifier,
    :image,
    :in_language,
    :is_accessible_for_free,
    :keywords,
    :location,
    :main_entity_of_page,
    :maximum_attendee_capacity,
    :maximum_physical_attendee_capacity,
    :maximum_virtual_attendee_capacity,
    :name,
    :offers,
    :organizer,
    :owner,
    :performer,
    :performers,
    :potential_action,
    :previous_start_date,
    :recorded_in,
    :remaining_attendee_capacity,
    :review,
    :same_as,
    :sponsor,
    :start_date,
    :sub_event,
    :sub_events,
    :subject_of,
    :super_event,
    :translator,
    :typical_age_range,
    :url,
    :work_featured,
    :work_performed
  ]

  @json_keys %{
    about: "about",
    actor: "actor",
    additional_type: "additionalType",
    aggregate_rating: "aggregateRating",
    alternate_name: "alternateName",
    attendee: "attendee",
    attendees: "attendees",
    audience: "audience",
    composer: "composer",
    contributor: "contributor",
    description: "description",
    director: "director",
    disambiguating_description: "disambiguatingDescription",
    door_time: "doorTime",
    duration: "duration",
    end_date: "endDate",
    event_attendance_mode: "eventAttendanceMode",
    event_schedule: "eventSchedule",
    event_status: "eventStatus",
    funder: "funder",
    funding: "funding",
    has_participation_offer: "hasParticipationOffer",
    has_sponsorship_offer: "hasSponsorshipOffer",
    identifier: "identifier",
    image: "image",
    in_language: "inLanguage",
    is_accessible_for_free: "isAccessibleForFree",
    keywords: "keywords",
    location: "location",
    main_entity_of_page: "mainEntityOfPage",
    maximum_attendee_capacity: "maximumAttendeeCapacity",
    maximum_physical_attendee_capacity: "maximumPhysicalAttendeeCapacity",
    maximum_virtual_attendee_capacity: "maximumVirtualAttendeeCapacity",
    name: "name",
    offers: "offers",
    organizer: "organizer",
    owner: "owner",
    performer: "performer",
    performers: "performers",
    potential_action: "potentialAction",
    previous_start_date: "previousStartDate",
    recorded_in: "recordedIn",
    remaining_attendee_capacity: "remainingAttendeeCapacity",
    review: "review",
    same_as: "sameAs",
    sponsor: "sponsor",
    start_date: "startDate",
    sub_event: "subEvent",
    sub_events: "subEvents",
    subject_of: "subjectOf",
    super_event: "superEvent",
    translator: "translator",
    typical_age_range: "typicalAgeRange",
    url: "url",
    work_featured: "workFeatured",
    work_performed: "workPerformed"
  }

  @doc false
  def __schema_org__, do: %{type: "ComedyEvent", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ComedyEvent` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `about` property.\n\nThe subject matter of an object."
  def about(%__MODULE__{} = thing, value) do
    %{thing | about: value}
  end

  @doc "Sets the Schema.org `actor` property.\n\nAn actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip."
  def actor(%__MODULE__{} = thing, value) do
    %{thing | actor: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `aggregateRating` property.\n\nThe overall rating, based on a collection of reviews or ratings, of the item."
  def aggregate_rating(%__MODULE__{} = thing, value) do
    %{thing | aggregate_rating: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `attendee` property.\n\nA person or organization attending the event."
  def attendee(%__MODULE__{} = thing, value) do
    %{thing | attendee: value}
  end

  @doc "Sets the Schema.org `attendees` property.\n\nA person attending the event."
  def attendees(%__MODULE__{} = thing, value) do
    %{thing | attendees: value}
  end

  @doc "Sets the Schema.org `audience` property.\n\nAn intended audience, i.e. a group for whom something was created."
  def audience(%__MODULE__{} = thing, value) do
    %{thing | audience: value}
  end

  @doc "Sets the Schema.org `composer` property.\n\nThe person or organization who wrote a composition, or who is the composer of a work performed at some event."
  def composer(%__MODULE__{} = thing, value) do
    %{thing | composer: value}
  end

  @doc "Sets the Schema.org `contributor` property.\n\nA secondary contributor to the CreativeWork or Event."
  def contributor(%__MODULE__{} = thing, value) do
    %{thing | contributor: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `director` property.\n\nA director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip."
  def director(%__MODULE__{} = thing, value) do
    %{thing | director: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `doorTime` property.\n\nThe time admission will commence."
  def door_time(%__MODULE__{} = thing, value) do
    %{thing | door_time: value}
  end

  @doc "Sets the Schema.org `duration` property.\n\nThe duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."
  def duration(%__MODULE__{} = thing, value) do
    %{thing | duration: value}
  end

  @doc "Sets the Schema.org `endDate` property.\n\nThe end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."
  def end_date(%__MODULE__{} = thing, value) do
    %{thing | end_date: value}
  end

  @doc "Sets the Schema.org `eventAttendanceMode` property.\n\nThe eventAttendanceMode of an event indicates whether it occurs online, offline, or a mix."
  def event_attendance_mode(%__MODULE__{} = thing, value) do
    %{thing | event_attendance_mode: value}
  end

  @doc "Sets the Schema.org `eventSchedule` property.\n\nAssociates an [[Event]] with a [[Schedule]]. There are circumstances where it is preferable to share a schedule for a series of\n      repeating events rather than data on the individual events themselves. For example, a website or application might prefer to publish a schedule for a weekly\n      gym class rather than provide data on every event. A schedule could be processed by applications to add forthcoming events to a calendar. An [[Event]] that\n      is associated with a [[Schedule]] using this property should not have [[startDate]] or [[endDate]] properties. These are instead defined within the associated\n      [[Schedule]], this avoids any ambiguity for clients using the data. The property might have repeated values to specify different schedules, e.g. for different months\n      or seasons."
  def event_schedule(%__MODULE__{} = thing, value) do
    %{thing | event_schedule: value}
  end

  @doc "Sets the Schema.org `eventStatus` property.\n\nAn eventStatus of an event represents its status; particularly useful when an event is cancelled or rescheduled."
  def event_status(%__MODULE__{} = thing, value) do
    %{thing | event_status: value}
  end

  @doc "Sets the Schema.org `funder` property.\n\nA person or organization that supports (sponsors) something through some kind of financial contribution."
  def funder(%__MODULE__{} = thing, value) do
    %{thing | funder: value}
  end

  @doc "Sets the Schema.org `funding` property.\n\nA [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."
  def funding(%__MODULE__{} = thing, value) do
    %{thing | funding: value}
  end

  @doc "Sets the Schema.org `hasParticipationOffer` property.\n\nAn offer to participate in the event, for example, Call for Proposals, Call for Speakers, or Call for Performers."
  def has_participation_offer(%__MODULE__{} = thing, value) do
    %{thing | has_participation_offer: value}
  end

  @doc "Sets the Schema.org `hasSponsorshipOffer` property.\n\nAn offer to sponsor the event, for example, Sponsorship Prospectus, Sponsorship Opportunities, or Sponsor Packages."
  def has_sponsorship_offer(%__MODULE__{} = thing, value) do
    %{thing | has_sponsorship_offer: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `inLanguage` property.\n\nThe language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]]."
  def in_language(%__MODULE__{} = thing, value) do
    %{thing | in_language: value}
  end

  @doc "Sets the Schema.org `isAccessibleForFree` property.\n\nA flag to signal that the item, event, or place is accessible for free."
  def is_accessible_for_free(%__MODULE__{} = thing, value) do
    %{thing | is_accessible_for_free: value}
  end

  @doc "Sets the Schema.org `keywords` property.\n\nKeywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."
  def keywords(%__MODULE__{} = thing, value) do
    %{thing | keywords: value}
  end

  @doc "Sets the Schema.org `location` property.\n\nThe location of, for example, where an event is happening, where an organization is located, or where an action takes place."
  def location(%__MODULE__{} = thing, value) do
    %{thing | location: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `maximumAttendeeCapacity` property.\n\nThe total number of individuals that may attend an event or venue."
  def maximum_attendee_capacity(%__MODULE__{} = thing, value) do
    %{thing | maximum_attendee_capacity: value}
  end

  @doc "Sets the Schema.org `maximumPhysicalAttendeeCapacity` property.\n\nThe maximum physical attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OfflineEventAttendanceMode]] (or the offline aspects, in the case of a [[MixedEventAttendanceMode]]). "
  def maximum_physical_attendee_capacity(%__MODULE__{} = thing, value) do
    %{thing | maximum_physical_attendee_capacity: value}
  end

  @doc "Sets the Schema.org `maximumVirtualAttendeeCapacity` property.\n\nThe maximum virtual attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OnlineEventAttendanceMode]] (or the online aspects, in the case of a [[MixedEventAttendanceMode]]). "
  def maximum_virtual_attendee_capacity(%__MODULE__{} = thing, value) do
    %{thing | maximum_virtual_attendee_capacity: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `offers` property.\n\nAn offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.\n      "
  def offers(%__MODULE__{} = thing, value) do
    %{thing | offers: value}
  end

  @doc "Sets the Schema.org `organizer` property.\n\nAn organizer of an Event."
  def organizer(%__MODULE__{} = thing, value) do
    %{thing | organizer: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `performer` property.\n\nA performer at the event&#x2014;for example, a presenter, musician, musical group or actor."
  def performer(%__MODULE__{} = thing, value) do
    %{thing | performer: value}
  end

  @doc "Sets the Schema.org `performers` property.\n\nThe main performer or performers of the event&#x2014;for example, a presenter, musician, or actor."
  def performers(%__MODULE__{} = thing, value) do
    %{thing | performers: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `previousStartDate` property.\n\nUsed in conjunction with eventStatus for rescheduled or cancelled events. This property contains the previously scheduled start date. For rescheduled events, the startDate property should be used for the newly scheduled start date. In the (rare) case of an event that has been postponed and rescheduled multiple times, this field may be repeated."
  def previous_start_date(%__MODULE__{} = thing, value) do
    %{thing | previous_start_date: value}
  end

  @doc "Sets the Schema.org `recordedIn` property.\n\nThe CreativeWork that captured all or part of this Event."
  def recorded_in(%__MODULE__{} = thing, value) do
    %{thing | recorded_in: value}
  end

  @doc "Sets the Schema.org `remainingAttendeeCapacity` property.\n\nThe number of attendee places for an event that remain unallocated."
  def remaining_attendee_capacity(%__MODULE__{} = thing, value) do
    %{thing | remaining_attendee_capacity: value}
  end

  @doc "Sets the Schema.org `review` property.\n\nA review of the item."
  def review(%__MODULE__{} = thing, value) do
    %{thing | review: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `sponsor` property.\n\nA person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event."
  def sponsor(%__MODULE__{} = thing, value) do
    %{thing | sponsor: value}
  end

  @doc "Sets the Schema.org `startDate` property.\n\nThe start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."
  def start_date(%__MODULE__{} = thing, value) do
    %{thing | start_date: value}
  end

  @doc "Sets the Schema.org `subEvent` property.\n\nAn Event that is part of this event. For example, a conference event includes many presentations, each of which is a subEvent of the conference."
  def sub_event(%__MODULE__{} = thing, value) do
    %{thing | sub_event: value}
  end

  @doc "Sets the Schema.org `subEvents` property.\n\nEvents that are a part of this event. For example, a conference event includes many presentations, each subEvents of the conference."
  def sub_events(%__MODULE__{} = thing, value) do
    %{thing | sub_events: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `superEvent` property.\n\nAn event that this event is a part of. For example, a collection of individual music performances might each have a music festival as their superEvent."
  def super_event(%__MODULE__{} = thing, value) do
    %{thing | super_event: value}
  end

  @doc "Sets the Schema.org `translator` property.\n\nOrganization or person who adapts a creative work to different languages, regional differences and technical requirements of a target market, or that translates during some event."
  def translator(%__MODULE__{} = thing, value) do
    %{thing | translator: value}
  end

  @doc "Sets the Schema.org `typicalAgeRange` property.\n\nThe typical expected age range, e.g. '7-9', '11-'."
  def typical_age_range(%__MODULE__{} = thing, value) do
    %{thing | typical_age_range: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `workFeatured` property.\n\nA work featured in some event, e.g. exhibited in an ExhibitionEvent.\n       Specific subproperties are available for workPerformed (e.g. a play), or a workPresented (a Movie at a ScreeningEvent)."
  def work_featured(%__MODULE__{} = thing, value) do
    %{thing | work_featured: value}
  end

  @doc "Sets the Schema.org `workPerformed` property.\n\nA work performed in some event, for example a play performed in a TheaterEvent."
  def work_performed(%__MODULE__{} = thing, value) do
    %{thing | work_performed: value}
  end
end
