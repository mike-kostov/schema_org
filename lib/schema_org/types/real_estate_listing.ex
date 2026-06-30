defmodule SchemaOrg.RealEstateListing do
  @moduledoc "A [[RealEstateListing]] is a listing that describes one or more real-estate [[Offer]]s (whose [[businessFunction]] is typically to lease out, or to sell).\n  The [[RealEstateListing]] type itself represents the overall listing, as manifested in some [[WebPage]].\n  "

  defstruct [
    :about,
    :abstract,
    :access_mode,
    :access_mode_sufficient,
    :accessibility_api,
    :accessibility_control,
    :accessibility_feature,
    :accessibility_hazard,
    :accessibility_summary,
    :accountable_person,
    :acquire_license_page,
    :additional_type,
    :aggregate_rating,
    :alternate_name,
    :alternative_headline,
    :archived_at,
    :assesses,
    :associated_media,
    :audience,
    :audio,
    :author,
    :award,
    :awards,
    :breadcrumb,
    :character,
    :citation,
    :comment,
    :comment_count,
    :conditions_of_access,
    :content_location,
    :content_rating,
    :content_reference_time,
    :contributor,
    :copyright_holder,
    :copyright_notice,
    :copyright_year,
    :correction,
    :country_of_origin,
    :creative_work_status,
    :creator,
    :credit_text,
    :date_created,
    :date_modified,
    :date_posted,
    :date_published,
    :description,
    :digital_source_type,
    :disambiguating_description,
    :discussion_url,
    :display_location,
    :edit_eidr,
    :editor,
    :educational_alignment,
    :educational_level,
    :educational_use,
    :encoding,
    :encoding_format,
    :encodings,
    :example_of_work,
    :expires,
    :file_format,
    :funder,
    :funding,
    :genre,
    :has_part,
    :headline,
    :identifier,
    :image,
    :in_language,
    :interaction_statistic,
    :interactivity_type,
    :interpreted_as_claim,
    :is_accessible_for_free,
    :is_based_on,
    :is_based_on_url,
    :is_family_friendly,
    :is_part_of,
    :keywords,
    :last_reviewed,
    :learning_resource_type,
    :lease_length,
    :license,
    :location_created,
    :main_content_of_page,
    :main_entity,
    :main_entity_of_page,
    :maintainer,
    :material,
    :material_extent,
    :mentions,
    :name,
    :offers,
    :owner,
    :pattern,
    :position,
    :potential_action,
    :primary_image_of_page,
    :producer,
    :provider,
    :publication,
    :publisher,
    :publisher_imprint,
    :publishing_principles,
    :recorded_at,
    :related_link,
    :released_event,
    :review,
    :reviewed_by,
    :reviews,
    :same_as,
    :schema_version,
    :sd_date_published,
    :sd_license,
    :sd_publisher,
    :significant_link,
    :significant_links,
    :size,
    :source_organization,
    :spatial,
    :spatial_coverage,
    :speakable,
    :specialty,
    :sponsor,
    :subject_of,
    :teaches,
    :temporal,
    :temporal_coverage,
    :text,
    :thumbnail,
    :thumbnail_url,
    :time_required,
    :translation_of_work,
    :translator,
    :typical_age_range,
    :url,
    :usage_info,
    :version,
    :video,
    :word_count,
    :work_example,
    :work_translation
  ]

  @json_keys %{
    about: "about",
    abstract: "abstract",
    access_mode: "accessMode",
    access_mode_sufficient: "accessModeSufficient",
    accessibility_api: "accessibilityAPI",
    accessibility_control: "accessibilityControl",
    accessibility_feature: "accessibilityFeature",
    accessibility_hazard: "accessibilityHazard",
    accessibility_summary: "accessibilitySummary",
    accountable_person: "accountablePerson",
    acquire_license_page: "acquireLicensePage",
    additional_type: "additionalType",
    aggregate_rating: "aggregateRating",
    alternate_name: "alternateName",
    alternative_headline: "alternativeHeadline",
    archived_at: "archivedAt",
    assesses: "assesses",
    associated_media: "associatedMedia",
    audience: "audience",
    audio: "audio",
    author: "author",
    award: "award",
    awards: "awards",
    breadcrumb: "breadcrumb",
    character: "character",
    citation: "citation",
    comment: "comment",
    comment_count: "commentCount",
    conditions_of_access: "conditionsOfAccess",
    content_location: "contentLocation",
    content_rating: "contentRating",
    content_reference_time: "contentReferenceTime",
    contributor: "contributor",
    copyright_holder: "copyrightHolder",
    copyright_notice: "copyrightNotice",
    copyright_year: "copyrightYear",
    correction: "correction",
    country_of_origin: "countryOfOrigin",
    creative_work_status: "creativeWorkStatus",
    creator: "creator",
    credit_text: "creditText",
    date_created: "dateCreated",
    date_modified: "dateModified",
    date_posted: "datePosted",
    date_published: "datePublished",
    description: "description",
    digital_source_type: "digitalSourceType",
    disambiguating_description: "disambiguatingDescription",
    discussion_url: "discussionUrl",
    display_location: "displayLocation",
    edit_eidr: "editEIDR",
    editor: "editor",
    educational_alignment: "educationalAlignment",
    educational_level: "educationalLevel",
    educational_use: "educationalUse",
    encoding: "encoding",
    encoding_format: "encodingFormat",
    encodings: "encodings",
    example_of_work: "exampleOfWork",
    expires: "expires",
    file_format: "fileFormat",
    funder: "funder",
    funding: "funding",
    genre: "genre",
    has_part: "hasPart",
    headline: "headline",
    identifier: "identifier",
    image: "image",
    in_language: "inLanguage",
    interaction_statistic: "interactionStatistic",
    interactivity_type: "interactivityType",
    interpreted_as_claim: "interpretedAsClaim",
    is_accessible_for_free: "isAccessibleForFree",
    is_based_on: "isBasedOn",
    is_based_on_url: "isBasedOnUrl",
    is_family_friendly: "isFamilyFriendly",
    is_part_of: "isPartOf",
    keywords: "keywords",
    last_reviewed: "lastReviewed",
    learning_resource_type: "learningResourceType",
    lease_length: "leaseLength",
    license: "license",
    location_created: "locationCreated",
    main_content_of_page: "mainContentOfPage",
    main_entity: "mainEntity",
    main_entity_of_page: "mainEntityOfPage",
    maintainer: "maintainer",
    material: "material",
    material_extent: "materialExtent",
    mentions: "mentions",
    name: "name",
    offers: "offers",
    owner: "owner",
    pattern: "pattern",
    position: "position",
    potential_action: "potentialAction",
    primary_image_of_page: "primaryImageOfPage",
    producer: "producer",
    provider: "provider",
    publication: "publication",
    publisher: "publisher",
    publisher_imprint: "publisherImprint",
    publishing_principles: "publishingPrinciples",
    recorded_at: "recordedAt",
    related_link: "relatedLink",
    released_event: "releasedEvent",
    review: "review",
    reviewed_by: "reviewedBy",
    reviews: "reviews",
    same_as: "sameAs",
    schema_version: "schemaVersion",
    sd_date_published: "sdDatePublished",
    sd_license: "sdLicense",
    sd_publisher: "sdPublisher",
    significant_link: "significantLink",
    significant_links: "significantLinks",
    size: "size",
    source_organization: "sourceOrganization",
    spatial: "spatial",
    spatial_coverage: "spatialCoverage",
    speakable: "speakable",
    specialty: "specialty",
    sponsor: "sponsor",
    subject_of: "subjectOf",
    teaches: "teaches",
    temporal: "temporal",
    temporal_coverage: "temporalCoverage",
    text: "text",
    thumbnail: "thumbnail",
    thumbnail_url: "thumbnailUrl",
    time_required: "timeRequired",
    translation_of_work: "translationOfWork",
    translator: "translator",
    typical_age_range: "typicalAgeRange",
    url: "url",
    usage_info: "usageInfo",
    version: "version",
    video: "video",
    word_count: "wordCount",
    work_example: "workExample",
    work_translation: "workTranslation"
  }

  @doc false
  def __schema_org__, do: %{type: "RealEstateListing", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.RealEstateListing` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `about` property.\n\nThe subject matter of an object."
  def about(%__MODULE__{} = thing, value) do
    %{thing | about: value}
  end

  @doc "Sets the Schema.org `abstract` property.\n\nAn abstract is a short description that summarizes a [[CreativeWork]]."
  def abstract(%__MODULE__{} = thing, value) do
    %{thing | abstract: value}
  end

  @doc "Sets the Schema.org `accessMode` property.\n\nThe human sensory perceptual system or cognitive faculty through which a person may process or perceive the intellectual content of a resource, not including any adaptations of the content (e.g., text alternatives for images). Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessMode-vocabulary)."
  def access_mode(%__MODULE__{} = thing, value) do
    %{thing | access_mode: value}
  end

  @doc "Sets the Schema.org `accessModeSufficient` property.\n\nA list of single or combined access modes that are sufficient to understand all the intellectual content of a resource, including any adaptations. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessModeSufficient-vocabulary)."
  def access_mode_sufficient(%__MODULE__{} = thing, value) do
    %{thing | access_mode_sufficient: value}
  end

  @doc "Sets the Schema.org `accessibilityAPI` property.\n\nIndicates that the resource is compatible with the referenced accessibility API. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityAPI-vocabulary)."
  def accessibility_api(%__MODULE__{} = thing, value) do
    %{thing | accessibility_api: value}
  end

  @doc "Sets the Schema.org `accessibilityControl` property.\n\nIdentifies input methods that are sufficient to fully control the described resource. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityControl-vocabulary)."
  def accessibility_control(%__MODULE__{} = thing, value) do
    %{thing | accessibility_control: value}
  end

  @doc "Sets the Schema.org `accessibilityFeature` property.\n\nContent features of the resource, such as accessible media, alternatives and supported enhancements for accessibility. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityFeature-vocabulary)."
  def accessibility_feature(%__MODULE__{} = thing, value) do
    %{thing | accessibility_feature: value}
  end

  @doc "Sets the Schema.org `accessibilityHazard` property.\n\nA characteristic of the described resource that is physiologically dangerous to some users. Related to WCAG 2.0 guideline 2.3. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityHazard-vocabulary)."
  def accessibility_hazard(%__MODULE__{} = thing, value) do
    %{thing | accessibility_hazard: value}
  end

  @doc "Sets the Schema.org `accessibilitySummary` property.\n\nA human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as \"short descriptions are present but long descriptions will be needed for non-visual users\" or \"short descriptions are present and no long descriptions are needed\"."
  def accessibility_summary(%__MODULE__{} = thing, value) do
    %{thing | accessibility_summary: value}
  end

  @doc "Sets the Schema.org `accountablePerson` property.\n\nSpecifies the Person that is legally accountable for the CreativeWork."
  def accountable_person(%__MODULE__{} = thing, value) do
    %{thing | accountable_person: value}
  end

  @doc "Sets the Schema.org `acquireLicensePage` property.\n\nIndicates a page documenting how licenses can be purchased or otherwise acquired, for the current item."
  def acquire_license_page(%__MODULE__{} = thing, value) do
    %{thing | acquire_license_page: value}
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

  @doc "Sets the Schema.org `alternativeHeadline` property.\n\nA secondary title of the CreativeWork."
  def alternative_headline(%__MODULE__{} = thing, value) do
    %{thing | alternative_headline: value}
  end

  @doc "Sets the Schema.org `archivedAt` property.\n\nIndicates a page or other link involved in archival of a [[CreativeWork]]. In the case of [[MediaReview]], the items in a [[MediaReviewItem]] may often become inaccessible, but be archived by archival, journalistic, activist, or law enforcement organizations. In such cases, the referenced page may not directly publish the content."
  def archived_at(%__MODULE__{} = thing, value) do
    %{thing | archived_at: value}
  end

  @doc "Sets the Schema.org `assesses` property.\n\nThe item being described is intended to assess the competency or learning outcome defined by the referenced term."
  def assesses(%__MODULE__{} = thing, value) do
    %{thing | assesses: value}
  end

  @doc "Sets the Schema.org `associatedMedia` property.\n\nA media object that encodes this CreativeWork. This property is a synonym for encoding."
  def associated_media(%__MODULE__{} = thing, value) do
    %{thing | associated_media: value}
  end

  @doc "Sets the Schema.org `audience` property.\n\nAn intended audience, i.e. a group for whom something was created."
  def audience(%__MODULE__{} = thing, value) do
    %{thing | audience: value}
  end

  @doc "Sets the Schema.org `audio` property.\n\nAn embedded audio object."
  def audio(%__MODULE__{} = thing, value) do
    %{thing | audio: value}
  end

  @doc "Sets the Schema.org `author` property.\n\nThe author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably."
  def author(%__MODULE__{} = thing, value) do
    %{thing | author: value}
  end

  @doc "Sets the Schema.org `award` property.\n\nAn award won by or for this item."
  def award(%__MODULE__{} = thing, value) do
    %{thing | award: value}
  end

  @doc "Sets the Schema.org `awards` property.\n\nAwards won by or for this item."
  def awards(%__MODULE__{} = thing, value) do
    %{thing | awards: value}
  end

  @doc "Sets the Schema.org `breadcrumb` property.\n\nA set of links that can help a user understand and navigate a website hierarchy."
  def breadcrumb(%__MODULE__{} = thing, value) do
    %{thing | breadcrumb: value}
  end

  @doc "Sets the Schema.org `character` property.\n\nFictional person connected with a creative work."
  def character(%__MODULE__{} = thing, value) do
    %{thing | character: value}
  end

  @doc "Sets the Schema.org `citation` property.\n\nA citation or reference to another creative work, such as another publication, web page, scholarly article, etc."
  def citation(%__MODULE__{} = thing, value) do
    %{thing | citation: value}
  end

  @doc "Sets the Schema.org `comment` property.\n\nComments, typically from users."
  def comment(%__MODULE__{} = thing, value) do
    %{thing | comment: value}
  end

  @doc "Sets the Schema.org `commentCount` property.\n\nThe number of comments this CreativeWork (e.g. Article, Question or Answer) has received. This is most applicable to works published in Web sites with commenting system; additional comments may exist elsewhere."
  def comment_count(%__MODULE__{} = thing, value) do
    %{thing | comment_count: value}
  end

  @doc "Sets the Schema.org `conditionsOfAccess` property.\n\nConditions that affect the availability of, or method(s) of access to, an item. Typically used for real world items such as an [[ArchiveComponent]] held by an [[ArchiveOrganization]]. This property is not suitable for use as a general Web access control mechanism. It is expressed only in natural language.\\n\\nFor example \"Available by appointment from the Reading Room\" or \"Accessible only from logged-in accounts \". "
  def conditions_of_access(%__MODULE__{} = thing, value) do
    %{thing | conditions_of_access: value}
  end

  @doc "Sets the Schema.org `contentLocation` property.\n\nThe location depicted or described in the content. For example, the location in a photograph or painting."
  def content_location(%__MODULE__{} = thing, value) do
    %{thing | content_location: value}
  end

  @doc "Sets the Schema.org `contentRating` property.\n\nOfficial rating of a piece of content&#x2014;for example, 'MPAA PG-13'."
  def content_rating(%__MODULE__{} = thing, value) do
    %{thing | content_rating: value}
  end

  @doc "Sets the Schema.org `contentReferenceTime` property.\n\nThe specific time described by a creative work, for works (e.g. articles, video objects etc.) that emphasise a particular moment within an Event."
  def content_reference_time(%__MODULE__{} = thing, value) do
    %{thing | content_reference_time: value}
  end

  @doc "Sets the Schema.org `contributor` property.\n\nA secondary contributor to the CreativeWork or Event."
  def contributor(%__MODULE__{} = thing, value) do
    %{thing | contributor: value}
  end

  @doc "Sets the Schema.org `copyrightHolder` property.\n\nThe party holding the legal copyright to the CreativeWork."
  def copyright_holder(%__MODULE__{} = thing, value) do
    %{thing | copyright_holder: value}
  end

  @doc "Sets the Schema.org `copyrightNotice` property.\n\nText of a notice appropriate for describing the copyright aspects of this Creative Work, ideally indicating the owner of the copyright for the Work."
  def copyright_notice(%__MODULE__{} = thing, value) do
    %{thing | copyright_notice: value}
  end

  @doc "Sets the Schema.org `copyrightYear` property.\n\nThe year during which the claimed copyright for the CreativeWork was first asserted."
  def copyright_year(%__MODULE__{} = thing, value) do
    %{thing | copyright_year: value}
  end

  @doc "Sets the Schema.org `correction` property.\n\nIndicates a correction to a [[CreativeWork]], either via a [[CorrectionComment]], textually or in another document."
  def correction(%__MODULE__{} = thing, value) do
    %{thing | correction: value}
  end

  @doc "Sets the Schema.org `countryOfOrigin` property.\n\nThe country of origin of something, including products as well as creative  works such as movie and TV content.\n\nIn the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.\n\nIn the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here."
  def country_of_origin(%__MODULE__{} = thing, value) do
    %{thing | country_of_origin: value}
  end

  @doc "Sets the Schema.org `creativeWorkStatus` property.\n\nThe status of a creative work in terms of its stage in a lifecycle. Example terms include Incomplete, Draft, Published, Obsolete. Some organizations define a set of terms for the stages of their publication lifecycle."
  def creative_work_status(%__MODULE__{} = thing, value) do
    %{thing | creative_work_status: value}
  end

  @doc "Sets the Schema.org `creator` property.\n\nThe creator/author of this CreativeWork. This is the same as the Author property for CreativeWork."
  def creator(%__MODULE__{} = thing, value) do
    %{thing | creator: value}
  end

  @doc "Sets the Schema.org `creditText` property.\n\nText that can be used to credit person(s) and/or organization(s) associated with a published Creative Work."
  def credit_text(%__MODULE__{} = thing, value) do
    %{thing | credit_text: value}
  end

  @doc "Sets the Schema.org `dateCreated` property.\n\nThe date on which the CreativeWork was created or the item was added to a DataFeed."
  def date_created(%__MODULE__{} = thing, value) do
    %{thing | date_created: value}
  end

  @doc "Sets the Schema.org `dateModified` property.\n\nThe date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed."
  def date_modified(%__MODULE__{} = thing, value) do
    %{thing | date_modified: value}
  end

  @doc "Sets the Schema.org `datePosted` property.\n\nPublication date of an online listing."
  def date_posted(%__MODULE__{} = thing, value) do
    %{thing | date_posted: value}
  end

  @doc "Sets the Schema.org `datePublished` property.\n\nDate of first publication or broadcast. For example the date a [[CreativeWork]] was broadcast or a [[Certification]] was issued."
  def date_published(%__MODULE__{} = thing, value) do
    %{thing | date_published: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `digitalSourceType` property.\n\nIndicates an IPTCDigitalSourceEnumeration code indicating the nature of the digital source(s) for some [[CreativeWork]]."
  def digital_source_type(%__MODULE__{} = thing, value) do
    %{thing | digital_source_type: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `discussionUrl` property.\n\nA link to the page containing the comments of the CreativeWork."
  def discussion_url(%__MODULE__{} = thing, value) do
    %{thing | discussion_url: value}
  end

  @doc "Sets the Schema.org `displayLocation` property.\n\nThe location at which an item can be viewed or experienced in-person."
  def display_location(%__MODULE__{} = thing, value) do
    %{thing | display_location: value}
  end

  @doc "Sets the Schema.org `editEIDR` property.\n\nAn [EIDR](https://eidr.org/) (Entertainment Identifier Registry) [[identifier]] representing a specific edit / edition for a work of film or television.\n\nFor example, the motion picture known as \"Ghostbusters\" whose [[titleEIDR]] is \"10.5240/7EC7-228A-510A-053E-CBB8-J\" has several edits, e.g. \"10.5240/1F2A-E1C5-680A-14C6-E76B-I\" and \"10.5240/8A35-3BEE-6497-5D12-9E4F-3\".\n\nSince schema.org types like [[Movie]] and [[TVEpisode]] can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description.\n"
  def edit_eidr(%__MODULE__{} = thing, value) do
    %{thing | edit_eidr: value}
  end

  @doc "Sets the Schema.org `editor` property.\n\nSpecifies the Person who edited the CreativeWork."
  def editor(%__MODULE__{} = thing, value) do
    %{thing | editor: value}
  end

  @doc "Sets the Schema.org `educationalAlignment` property.\n\nAn alignment to an established educational framework.\n\nThis property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency."
  def educational_alignment(%__MODULE__{} = thing, value) do
    %{thing | educational_alignment: value}
  end

  @doc "Sets the Schema.org `educationalLevel` property.\n\nThe level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators."
  def educational_level(%__MODULE__{} = thing, value) do
    %{thing | educational_level: value}
  end

  @doc "Sets the Schema.org `educationalUse` property.\n\nThe purpose of a work in the context of education; for example, 'assignment', 'group work'."
  def educational_use(%__MODULE__{} = thing, value) do
    %{thing | educational_use: value}
  end

  @doc "Sets the Schema.org `encoding` property.\n\nA media object that encodes this CreativeWork. This property is a synonym for associatedMedia."
  def encoding(%__MODULE__{} = thing, value) do
    %{thing | encoding: value}
  end

  @doc "Sets the Schema.org `encodingFormat` property.\n\nMedia type typically expressed using a MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml) and [MDN reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)), e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.\n\nIn cases where a [[CreativeWork]] has several media type representations, [[encoding]] can be used to indicate each [[MediaObject]] alongside particular [[encodingFormat]] information.\n\nUnregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry."
  def encoding_format(%__MODULE__{} = thing, value) do
    %{thing | encoding_format: value}
  end

  @doc "Sets the Schema.org `encodings` property.\n\nA media object that encodes this CreativeWork."
  def encodings(%__MODULE__{} = thing, value) do
    %{thing | encodings: value}
  end

  @doc "Sets the Schema.org `exampleOfWork` property.\n\nA creative work that this work is an example/instance/realization/derivation of."
  def example_of_work(%__MODULE__{} = thing, value) do
    %{thing | example_of_work: value}
  end

  @doc "Sets the Schema.org `expires` property.\n\nDate the content expires and is no longer useful or available. For example a [[VideoObject]] or [[NewsArticle]] whose availability or relevance is time-limited, a [[ClaimReview]] fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date, or a [[Certification]] the validity has expired."
  def expires(%__MODULE__{} = thing, value) do
    %{thing | expires: value}
  end

  @doc "Sets the Schema.org `fileFormat` property.\n\nMedia type, typically MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml)) of the content, e.g. application/zip of a SoftwareApplication binary. In cases where a CreativeWork has several media type representations, 'encoding' can be used to indicate each MediaObject alongside particular fileFormat information. Unregistered or niche file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia entry."
  def file_format(%__MODULE__{} = thing, value) do
    %{thing | file_format: value}
  end

  @doc "Sets the Schema.org `funder` property.\n\nA person or organization that supports (sponsors) something through some kind of financial contribution."
  def funder(%__MODULE__{} = thing, value) do
    %{thing | funder: value}
  end

  @doc "Sets the Schema.org `funding` property.\n\nA [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."
  def funding(%__MODULE__{} = thing, value) do
    %{thing | funding: value}
  end

  @doc "Sets the Schema.org `genre` property.\n\nGenre of the creative work, broadcast channel or group."
  def genre(%__MODULE__{} = thing, value) do
    %{thing | genre: value}
  end

  @doc "Sets the Schema.org `hasPart` property.\n\nIndicates an item or CreativeWork that is part of this item, or CreativeWork (in some sense)."
  def has_part(%__MODULE__{} = thing, value) do
    %{thing | has_part: value}
  end

  @doc "Sets the Schema.org `headline` property.\n\nHeadline of the article."
  def headline(%__MODULE__{} = thing, value) do
    %{thing | headline: value}
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

  @doc "Sets the Schema.org `interactionStatistic` property.\n\nThe number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used."
  def interaction_statistic(%__MODULE__{} = thing, value) do
    %{thing | interaction_statistic: value}
  end

  @doc "Sets the Schema.org `interactivityType` property.\n\nThe predominant mode of learning supported by the learning resource. Acceptable values are 'active', 'expositive', or 'mixed'."
  def interactivity_type(%__MODULE__{} = thing, value) do
    %{thing | interactivity_type: value}
  end

  @doc "Sets the Schema.org `interpretedAsClaim` property.\n\nUsed to indicate a specific claim contained, implied, translated or refined from the content of a [[MediaObject]] or other [[CreativeWork]]. The interpreting party can be indicated using [[claimInterpreter]]."
  def interpreted_as_claim(%__MODULE__{} = thing, value) do
    %{thing | interpreted_as_claim: value}
  end

  @doc "Sets the Schema.org `isAccessibleForFree` property.\n\nA flag to signal that the item, event, or place is accessible for free."
  def is_accessible_for_free(%__MODULE__{} = thing, value) do
    %{thing | is_accessible_for_free: value}
  end

  @doc "Sets the Schema.org `isBasedOn` property.\n\nA resource from which this work is derived or from which it is a modification or adaptation."
  def is_based_on(%__MODULE__{} = thing, value) do
    %{thing | is_based_on: value}
  end

  @doc "Sets the Schema.org `isBasedOnUrl` property.\n\nA resource that was used in the creation of this resource. This term can be repeated for multiple sources. For example, http://example.com/great-multiplication-intro.html."
  def is_based_on_url(%__MODULE__{} = thing, value) do
    %{thing | is_based_on_url: value}
  end

  @doc "Sets the Schema.org `isFamilyFriendly` property.\n\nIndicates whether this content is family friendly."
  def is_family_friendly(%__MODULE__{} = thing, value) do
    %{thing | is_family_friendly: value}
  end

  @doc "Sets the Schema.org `isPartOf` property.\n\nIndicates an item or CreativeWork that this item, or CreativeWork (in some sense), is part of."
  def is_part_of(%__MODULE__{} = thing, value) do
    %{thing | is_part_of: value}
  end

  @doc "Sets the Schema.org `keywords` property.\n\nKeywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."
  def keywords(%__MODULE__{} = thing, value) do
    %{thing | keywords: value}
  end

  @doc "Sets the Schema.org `lastReviewed` property.\n\nDate on which the content on this web page was last reviewed for accuracy and/or completeness."
  def last_reviewed(%__MODULE__{} = thing, value) do
    %{thing | last_reviewed: value}
  end

  @doc "Sets the Schema.org `learningResourceType` property.\n\nThe predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'."
  def learning_resource_type(%__MODULE__{} = thing, value) do
    %{thing | learning_resource_type: value}
  end

  @doc "Sets the Schema.org `leaseLength` property.\n\nLength of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property."
  def lease_length(%__MODULE__{} = thing, value) do
    %{thing | lease_length: value}
  end

  @doc "Sets the Schema.org `license` property.\n\nA license document that applies to this content, typically indicated by URL."
  def license(%__MODULE__{} = thing, value) do
    %{thing | license: value}
  end

  @doc "Sets the Schema.org `locationCreated` property.\n\nThe location where the CreativeWork was created, which may not be the same as the location depicted in the CreativeWork."
  def location_created(%__MODULE__{} = thing, value) do
    %{thing | location_created: value}
  end

  @doc "Sets the Schema.org `mainContentOfPage` property.\n\nIndicates if this web page element is the main subject of the page."
  def main_content_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_content_of_page: value}
  end

  @doc "Sets the Schema.org `mainEntity` property.\n\nIndicates the primary entity described in some page or other CreativeWork."
  def main_entity(%__MODULE__{} = thing, value) do
    %{thing | main_entity: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `maintainer` property.\n\nA maintainer of a [[Dataset]], software package ([[SoftwareApplication]]), or other [[Project]]. A maintainer is a [[Person]] or [[Organization]] that manages contributions to, and/or publication of, some (typically complex) artifact. It is common for distributions of software and data to be based on \"upstream\" sources. When [[maintainer]] is applied to a specific version of something e.g. a particular version or packaging of a [[Dataset]], it is always  possible that the upstream source has a different maintainer. The [[isBasedOn]] property can be used to indicate such relationships between datasets to make the different maintenance roles clear. Similarly in the case of software, a package may have dedicated maintainers working on integration into software distributions such as Ubuntu, as well as upstream maintainers of the underlying work.\n      "
  def maintainer(%__MODULE__{} = thing, value) do
    %{thing | maintainer: value}
  end

  @doc "Sets the Schema.org `material` property.\n\nA material that something is made from, e.g. leather, wool, cotton, paper."
  def material(%__MODULE__{} = thing, value) do
    %{thing | material: value}
  end

  @doc "Sets the Schema.org `materialExtent` property.\n\nThe quantity of the materials being described or an expression of the physical space they occupy."
  def material_extent(%__MODULE__{} = thing, value) do
    %{thing | material_extent: value}
  end

  @doc "Sets the Schema.org `mentions` property.\n\nIndicates that the CreativeWork contains a reference to, but is not necessarily about a concept."
  def mentions(%__MODULE__{} = thing, value) do
    %{thing | mentions: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `offers` property.\n\nAn offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.\n      "
  def offers(%__MODULE__{} = thing, value) do
    %{thing | offers: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `pattern` property.\n\nA pattern that something has, for example 'polka dot', 'striped', 'Canadian flag'. Values are typically expressed as text, although links to controlled value schemes are also supported."
  def pattern(%__MODULE__{} = thing, value) do
    %{thing | pattern: value}
  end

  @doc "Sets the Schema.org `position` property.\n\nThe position of an item in a series or sequence of items."
  def position(%__MODULE__{} = thing, value) do
    %{thing | position: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `primaryImageOfPage` property.\n\nIndicates the main image on the page."
  def primary_image_of_page(%__MODULE__{} = thing, value) do
    %{thing | primary_image_of_page: value}
  end

  @doc "Sets the Schema.org `producer` property.\n\nThe person or organization who produced the work (e.g. music album, movie, TV/radio series etc.)."
  def producer(%__MODULE__{} = thing, value) do
    %{thing | producer: value}
  end

  @doc "Sets the Schema.org `provider` property.\n\nThe service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."
  def provider(%__MODULE__{} = thing, value) do
    %{thing | provider: value}
  end

  @doc "Sets the Schema.org `publication` property.\n\nA publication event associated with the item."
  def publication(%__MODULE__{} = thing, value) do
    %{thing | publication: value}
  end

  @doc "Sets the Schema.org `publisher` property.\n\nThe publisher of the article in question."
  def publisher(%__MODULE__{} = thing, value) do
    %{thing | publisher: value}
  end

  @doc "Sets the Schema.org `publisherImprint` property.\n\nThe publishing division which published the comic."
  def publisher_imprint(%__MODULE__{} = thing, value) do
    %{thing | publisher_imprint: value}
  end

  @doc "Sets the Schema.org `publishingPrinciples` property.\n\nThe publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].\n\nWhile such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.\n"
  def publishing_principles(%__MODULE__{} = thing, value) do
    %{thing | publishing_principles: value}
  end

  @doc "Sets the Schema.org `recordedAt` property.\n\nThe Event where the CreativeWork was recorded. The CreativeWork may capture all or part of the event."
  def recorded_at(%__MODULE__{} = thing, value) do
    %{thing | recorded_at: value}
  end

  @doc "Sets the Schema.org `relatedLink` property.\n\nA link related to this web page, for example to other related web pages."
  def related_link(%__MODULE__{} = thing, value) do
    %{thing | related_link: value}
  end

  @doc "Sets the Schema.org `releasedEvent` property.\n\nThe place and time the release was issued, expressed as a PublicationEvent."
  def released_event(%__MODULE__{} = thing, value) do
    %{thing | released_event: value}
  end

  @doc "Sets the Schema.org `review` property.\n\nA review of the item."
  def review(%__MODULE__{} = thing, value) do
    %{thing | review: value}
  end

  @doc "Sets the Schema.org `reviewedBy` property.\n\nPeople or organizations that have reviewed the content on this web page for accuracy and/or completeness."
  def reviewed_by(%__MODULE__{} = thing, value) do
    %{thing | reviewed_by: value}
  end

  @doc "Sets the Schema.org `reviews` property.\n\nReview of the item."
  def reviews(%__MODULE__{} = thing, value) do
    %{thing | reviews: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `schemaVersion` property.\n\nIndicates (by URL or string) a particular version of a schema used in some CreativeWork. This property was created primarily to\n    indicate the use of a specific schema.org release, e.g. ```10.0``` as a simple string, or more explicitly via URL, ```https://schema.org/docs/releases.html#v10.0```. There may be situations in which other schemas might usefully be referenced this way, e.g. ```http://dublincore.org/specifications/dublin-core/dces/1999-07-02/``` but this has not been carefully explored in the community."
  def schema_version(%__MODULE__{} = thing, value) do
    %{thing | schema_version: value}
  end

  @doc "Sets the Schema.org `sdDatePublished` property.\n\nIndicates the date on which the current structured data was generated / published. Typically used alongside [[sdPublisher]]."
  def sd_date_published(%__MODULE__{} = thing, value) do
    %{thing | sd_date_published: value}
  end

  @doc "Sets the Schema.org `sdLicense` property.\n\nA license document that applies to this structured data, typically indicated by URL."
  def sd_license(%__MODULE__{} = thing, value) do
    %{thing | sd_license: value}
  end

  @doc "Sets the Schema.org `sdPublisher` property.\n\nIndicates the party responsible for generating and publishing the current structured data markup, typically in cases where the structured data is derived automatically from existing published content but published on a different site. For example, student projects and open data initiatives often re-publish existing content with more explicitly structured metadata. The\n[[sdPublisher]] property helps make such practices more explicit."
  def sd_publisher(%__MODULE__{} = thing, value) do
    %{thing | sd_publisher: value}
  end

  @doc "Sets the Schema.org `significantLink` property.\n\nOne of the more significant URLs on the page. Typically, these are the non-navigation links that are clicked on the most."
  def significant_link(%__MODULE__{} = thing, value) do
    %{thing | significant_link: value}
  end

  @doc "Sets the Schema.org `significantLinks` property.\n\nThe most significant URLs on the page. Typically, these are the non-navigation links that are clicked on the most."
  def significant_links(%__MODULE__{} = thing, value) do
    %{thing | significant_links: value}
  end

  @doc "Sets the Schema.org `size` property.\n\nA standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured [[SizeSpecification]]; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable. "
  def size(%__MODULE__{} = thing, value) do
    %{thing | size: value}
  end

  @doc "Sets the Schema.org `sourceOrganization` property.\n\nThe Organization on whose behalf the creator was working."
  def source_organization(%__MODULE__{} = thing, value) do
    %{thing | source_organization: value}
  end

  @doc "Sets the Schema.org `spatial` property.\n\nThe \"spatial\" property can be used in cases when more specific properties\n(e.g. [[locationCreated]], [[spatialCoverage]], [[contentLocation]]) are not known to be appropriate."
  def spatial(%__MODULE__{} = thing, value) do
    %{thing | spatial: value}
  end

  @doc "Sets the Schema.org `spatialCoverage` property.\n\nThe spatialCoverage of a CreativeWork indicates the place(s) which are the focus of the content. It is a subproperty of\n      contentLocation intended primarily for more technical and detailed materials. For example with a Dataset, it indicates\n      areas that the dataset describes: a dataset of New York weather would have spatialCoverage which was the place: the state of New York."
  def spatial_coverage(%__MODULE__{} = thing, value) do
    %{thing | spatial_coverage: value}
  end

  @doc "Sets the Schema.org `speakable` property.\n\nIndicates sections of a Web page that are particularly 'speakable' in the sense of being highlighted as being especially appropriate for text-to-speech conversion. Other sections of a page may also be usefully spoken in particular circumstances; the 'speakable' property serves to indicate the parts most likely to be generally useful for speech.\n\nThe *speakable* property can be repeated an arbitrary number of times, with three kinds of possible 'content-locator' values:\n\n1.) *id-value* URL references - uses *id-value* of an element in the page being annotated. The simplest use of *speakable* has (potentially relative) URL values, referencing identified sections of the document concerned.\n\n2.) CSS Selectors - addresses content in the annotated page, e.g. via class attribute. Use the [[cssSelector]] property.\n\n3.)  XPaths - addresses content via XPaths (assuming an XML view of the content). Use the [[xpath]] property.\n\n\nFor more sophisticated markup of speakable sections beyond simple ID references, either CSS selectors or XPath expressions to pick out document section(s) as speakable. For this\nwe define a supporting type, [[SpeakableSpecification]]  which is defined to be a possible value of the *speakable* property.\n         "
  def speakable(%__MODULE__{} = thing, value) do
    %{thing | speakable: value}
  end

  @doc "Sets the Schema.org `specialty` property.\n\nOne of the domain specialities to which this web page's content applies."
  def specialty(%__MODULE__{} = thing, value) do
    %{thing | specialty: value}
  end

  @doc "Sets the Schema.org `sponsor` property.\n\nA person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event."
  def sponsor(%__MODULE__{} = thing, value) do
    %{thing | sponsor: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `teaches` property.\n\nThe item being described is intended to help a person learn the competency or learning outcome defined by the referenced term."
  def teaches(%__MODULE__{} = thing, value) do
    %{thing | teaches: value}
  end

  @doc "Sets the Schema.org `temporal` property.\n\nThe \"temporal\" property can be used in cases where more specific properties\n(e.g. [[temporalCoverage]], [[dateCreated]], [[dateModified]], [[datePublished]]) are not known to be appropriate."
  def temporal(%__MODULE__{} = thing, value) do
    %{thing | temporal: value}
  end

  @doc "Sets the Schema.org `temporalCoverage` property.\n\nThe temporalCoverage of a CreativeWork indicates the period that the content applies to, i.e. that it describes, either as a DateTime or as a textual string indicating a time period in [ISO 8601 time interval format](https://en.wikipedia.org/wiki/ISO_8601#Time_intervals). In\n      the case of a Dataset it will typically indicate the relevant time period in a precise notation (e.g. for a 2011 census dataset, the year 2011 would be written \"2011/2012\"). Other forms of content, e.g. ScholarlyArticle, Book, TVSeries or TVEpisode, may indicate their temporalCoverage in broader terms - textually or via well-known URL.\n      Written works such as books may sometimes have precise temporal coverage too, e.g. a work set in 1939 - 1945 can be indicated in ISO 8601 interval format format via \"1939/1945\".\n\nOpen-ended date ranges can be written with \"..\" in place of the end date. For example, \"2015-11/..\" indicates a range beginning in November 2015 and with no specified final date. This is tentative and might be updated in future when ISO 8601 is officially updated."
  def temporal_coverage(%__MODULE__{} = thing, value) do
    %{thing | temporal_coverage: value}
  end

  @doc "Sets the Schema.org `text` property.\n\nThe textual content of this CreativeWork."
  def text(%__MODULE__{} = thing, value) do
    %{thing | text: value}
  end

  @doc "Sets the Schema.org `thumbnail` property.\n\nThumbnail image for an image or video."
  def thumbnail(%__MODULE__{} = thing, value) do
    %{thing | thumbnail: value}
  end

  @doc "Sets the Schema.org `thumbnailUrl` property.\n\nA thumbnail image relevant to the Thing."
  def thumbnail_url(%__MODULE__{} = thing, value) do
    %{thing | thumbnail_url: value}
  end

  @doc "Sets the Schema.org `timeRequired` property.\n\nApproximate or typical time it usually takes to work with or through the content of this work for the typical or target audience."
  def time_required(%__MODULE__{} = thing, value) do
    %{thing | time_required: value}
  end

  @doc "Sets the Schema.org `translationOfWork` property.\n\nThe work that this work has been translated from. E.g. 物种起源 is a translationOf “On the Origin of Species”."
  def translation_of_work(%__MODULE__{} = thing, value) do
    %{thing | translation_of_work: value}
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

  @doc "Sets the Schema.org `usageInfo` property.\n\nThe schema.org [[usageInfo]] property indicates further information about a [[CreativeWork]]. This property is applicable both to works that are freely available and to those that require payment or other transactions. It can reference additional information, e.g. community expectations on preferred linking and citation conventions, as well as purchasing details. For something that can be commercially licensed, usageInfo can provide detailed, resource-specific information about licensing options.\n\nThis property can be used alongside the license property which indicates license(s) applicable to some piece of content. The usageInfo property can provide information about other licensing options, e.g. acquiring commercial usage rights for an image that is also available under non-commercial creative commons licenses."
  def usage_info(%__MODULE__{} = thing, value) do
    %{thing | usage_info: value}
  end

  @doc "Sets the Schema.org `version` property.\n\nThe version of the CreativeWork embodied by a specified resource."
  def version(%__MODULE__{} = thing, value) do
    %{thing | version: value}
  end

  @doc "Sets the Schema.org `video` property.\n\nAn embedded video object."
  def video(%__MODULE__{} = thing, value) do
    %{thing | video: value}
  end

  @doc "Sets the Schema.org `wordCount` property.\n\nThe number of words in the text of the CreativeWork such as an Article, Book, etc."
  def word_count(%__MODULE__{} = thing, value) do
    %{thing | word_count: value}
  end

  @doc "Sets the Schema.org `workExample` property.\n\nExample/instance/realization/derivation of the concept of this creative work. E.g. the paperback edition, first edition, or e-book."
  def work_example(%__MODULE__{} = thing, value) do
    %{thing | work_example: value}
  end

  @doc "Sets the Schema.org `workTranslation` property.\n\nA work that is a translation of the content of this work. E.g. 西遊記 has an English workTranslation “Journey to the West”, a German workTranslation “Monkeys Pilgerfahrt” and a Vietnamese  translation Tây du ký bình khảo."
  def work_translation(%__MODULE__{} = thing, value) do
    %{thing | work_translation: value}
  end
end
