defmodule SchemaOrg.ProductCollection do
  @moduledoc "A set of products (either [[ProductGroup]]s or specific variants) that are listed together e.g. in an [[Offer]]."

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
    :additional_property,
    :additional_type,
    :aggregate_rating,
    :alternate_name,
    :alternative_headline,
    :archived_at,
    :asin,
    :assesses,
    :associated_media,
    :audience,
    :audio,
    :author,
    :award,
    :awards,
    :brand,
    :category,
    :character,
    :citation,
    :collection_size,
    :color,
    :color_swatch,
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
    :country_of_assembly,
    :country_of_last_processing,
    :country_of_origin,
    :creative_work_status,
    :creator,
    :credit_text,
    :date_created,
    :date_modified,
    :date_published,
    :depth,
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
    :gtin,
    :gtin12,
    :gtin13,
    :gtin14,
    :gtin8,
    :has_adult_consideration,
    :has_certification,
    :has_energy_consumption_details,
    :has_gs1_digital_link,
    :has_measurement,
    :has_merchant_return_policy,
    :has_part,
    :headline,
    :height,
    :identifier,
    :image,
    :in_language,
    :in_product_group_with_id,
    :includes_object,
    :interaction_statistic,
    :interactivity_type,
    :interpreted_as_claim,
    :is_accessible_for_free,
    :is_accessory_or_spare_part_for,
    :is_based_on,
    :is_based_on_url,
    :is_consumable_for,
    :is_family_friendly,
    :is_part_of,
    :is_related_to,
    :is_similar_to,
    :is_variant_of,
    :item_condition,
    :keywords,
    :learning_resource_type,
    :license,
    :location_created,
    :logo,
    :main_entity,
    :main_entity_of_page,
    :maintainer,
    :manufacturer,
    :material,
    :material_extent,
    :mentions,
    :mobile_url,
    :model,
    :mpn,
    :name,
    :negative_notes,
    :nsn,
    :offers,
    :owner,
    :pattern,
    :position,
    :positive_notes,
    :potential_action,
    :producer,
    :product_id,
    :production_date,
    :provider,
    :publication,
    :publisher,
    :publisher_imprint,
    :publishing_principles,
    :purchase_date,
    :recorded_at,
    :release_date,
    :released_event,
    :review,
    :reviews,
    :same_as,
    :schema_version,
    :sd_date_published,
    :sd_license,
    :sd_publisher,
    :size,
    :sku,
    :slogan,
    :source_organization,
    :spatial,
    :spatial_coverage,
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
    :weight,
    :width,
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
    additional_property: "additionalProperty",
    additional_type: "additionalType",
    aggregate_rating: "aggregateRating",
    alternate_name: "alternateName",
    alternative_headline: "alternativeHeadline",
    archived_at: "archivedAt",
    asin: "asin",
    assesses: "assesses",
    associated_media: "associatedMedia",
    audience: "audience",
    audio: "audio",
    author: "author",
    award: "award",
    awards: "awards",
    brand: "brand",
    category: "category",
    character: "character",
    citation: "citation",
    collection_size: "collectionSize",
    color: "color",
    color_swatch: "colorSwatch",
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
    country_of_assembly: "countryOfAssembly",
    country_of_last_processing: "countryOfLastProcessing",
    country_of_origin: "countryOfOrigin",
    creative_work_status: "creativeWorkStatus",
    creator: "creator",
    credit_text: "creditText",
    date_created: "dateCreated",
    date_modified: "dateModified",
    date_published: "datePublished",
    depth: "depth",
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
    gtin: "gtin",
    gtin12: "gtin12",
    gtin13: "gtin13",
    gtin14: "gtin14",
    gtin8: "gtin8",
    has_adult_consideration: "hasAdultConsideration",
    has_certification: "hasCertification",
    has_energy_consumption_details: "hasEnergyConsumptionDetails",
    has_gs1_digital_link: "hasGS1DigitalLink",
    has_measurement: "hasMeasurement",
    has_merchant_return_policy: "hasMerchantReturnPolicy",
    has_part: "hasPart",
    headline: "headline",
    height: "height",
    identifier: "identifier",
    image: "image",
    in_language: "inLanguage",
    in_product_group_with_id: "inProductGroupWithID",
    includes_object: "includesObject",
    interaction_statistic: "interactionStatistic",
    interactivity_type: "interactivityType",
    interpreted_as_claim: "interpretedAsClaim",
    is_accessible_for_free: "isAccessibleForFree",
    is_accessory_or_spare_part_for: "isAccessoryOrSparePartFor",
    is_based_on: "isBasedOn",
    is_based_on_url: "isBasedOnUrl",
    is_consumable_for: "isConsumableFor",
    is_family_friendly: "isFamilyFriendly",
    is_part_of: "isPartOf",
    is_related_to: "isRelatedTo",
    is_similar_to: "isSimilarTo",
    is_variant_of: "isVariantOf",
    item_condition: "itemCondition",
    keywords: "keywords",
    learning_resource_type: "learningResourceType",
    license: "license",
    location_created: "locationCreated",
    logo: "logo",
    main_entity: "mainEntity",
    main_entity_of_page: "mainEntityOfPage",
    maintainer: "maintainer",
    manufacturer: "manufacturer",
    material: "material",
    material_extent: "materialExtent",
    mentions: "mentions",
    mobile_url: "mobileUrl",
    model: "model",
    mpn: "mpn",
    name: "name",
    negative_notes: "negativeNotes",
    nsn: "nsn",
    offers: "offers",
    owner: "owner",
    pattern: "pattern",
    position: "position",
    positive_notes: "positiveNotes",
    potential_action: "potentialAction",
    producer: "producer",
    product_id: "productID",
    production_date: "productionDate",
    provider: "provider",
    publication: "publication",
    publisher: "publisher",
    publisher_imprint: "publisherImprint",
    publishing_principles: "publishingPrinciples",
    purchase_date: "purchaseDate",
    recorded_at: "recordedAt",
    release_date: "releaseDate",
    released_event: "releasedEvent",
    review: "review",
    reviews: "reviews",
    same_as: "sameAs",
    schema_version: "schemaVersion",
    sd_date_published: "sdDatePublished",
    sd_license: "sdLicense",
    sd_publisher: "sdPublisher",
    size: "size",
    sku: "sku",
    slogan: "slogan",
    source_organization: "sourceOrganization",
    spatial: "spatial",
    spatial_coverage: "spatialCoverage",
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
    weight: "weight",
    width: "width",
    word_count: "wordCount",
    work_example: "workExample",
    work_translation: "workTranslation"
  }

  @doc false
  def __schema_org__, do: %{type: "ProductCollection", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.ProductCollection` struct."
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

  @doc "Sets the Schema.org `additionalProperty` property.\n\nA property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.\n"
  def additional_property(%__MODULE__{} = thing, value) do
    %{thing | additional_property: value}
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

  @doc "Sets the Schema.org `asin` property.\n\nAn Amazon Standard Identification Number (ASIN) is a 10-character alphanumeric unique identifier assigned by Amazon.com and its partners for product identification within the Amazon organization (summary from [Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s article).\n\nNote also that this is a definition for how to include ASINs in Schema.org data, and not a definition of ASINs in general - see documentation from Amazon for authoritative details.\nASINs are most commonly encoded as text strings, but the [asin] property supports URL/URI as potential values too."
  def asin(%__MODULE__{} = thing, value) do
    %{thing | asin: value}
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

  @doc "Sets the Schema.org `brand` property.\n\nThe brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person."
  def brand(%__MODULE__{} = thing, value) do
    %{thing | brand: value}
  end

  @doc "Sets the Schema.org `category` property.\n\nA category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."
  def category(%__MODULE__{} = thing, value) do
    %{thing | category: value}
  end

  @doc "Sets the Schema.org `character` property.\n\nFictional person connected with a creative work."
  def character(%__MODULE__{} = thing, value) do
    %{thing | character: value}
  end

  @doc "Sets the Schema.org `citation` property.\n\nA citation or reference to another creative work, such as another publication, web page, scholarly article, etc."
  def citation(%__MODULE__{} = thing, value) do
    %{thing | citation: value}
  end

  @doc "Sets the Schema.org `collectionSize` property.\n\nThe number of items in the [[Collection]]."
  def collection_size(%__MODULE__{} = thing, value) do
    %{thing | collection_size: value}
  end

  @doc "Sets the Schema.org `color` property.\n\nThe color of the product."
  def color(%__MODULE__{} = thing, value) do
    %{thing | color: value}
  end

  @doc "Sets the Schema.org `colorSwatch` property.\n\nA color swatch image, visualizing the color of a [[Product]]. Should match the textual description specified in the [[color]] property. This can be a URL or a fully described ImageObject."
  def color_swatch(%__MODULE__{} = thing, value) do
    %{thing | color_swatch: value}
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

  @doc "Sets the Schema.org `countryOfAssembly` property.\n\nThe place where the product was assembled."
  def country_of_assembly(%__MODULE__{} = thing, value) do
    %{thing | country_of_assembly: value}
  end

  @doc "Sets the Schema.org `countryOfLastProcessing` property.\n\nThe place where the item (typically [[Product]]) was last processed and tested before importation."
  def country_of_last_processing(%__MODULE__{} = thing, value) do
    %{thing | country_of_last_processing: value}
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

  @doc "Sets the Schema.org `datePublished` property.\n\nDate of first publication or broadcast. For example the date a [[CreativeWork]] was broadcast or a [[Certification]] was issued."
  def date_published(%__MODULE__{} = thing, value) do
    %{thing | date_published: value}
  end

  @doc "Sets the Schema.org `depth` property.\n\nThe depth of the item."
  def depth(%__MODULE__{} = thing, value) do
    %{thing | depth: value}
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

  @doc "Sets the Schema.org `gtin` property.\n\nA Global Trade Item Number ([GTIN](https://www.gs1.org/standards/id-keys/gtin)). GTINs identify trade items, including products and services, using numeric identification codes.\n\nA correct [[gtin]] value should be a valid GTIN, which means that it should be an all-numeric string of either 8, 12, 13 or 14 digits, or a \"GS1 Digital Link\" URL based on such a string. The numeric component should also have a [valid GS1 check digit](https://www.gs1.org/services/check-digit-calculator) and meet the other rules for valid GTINs. See also [GS1's GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) and [Wikipedia](https://en.wikipedia.org/wiki/Global_Trade_Item_Number) for more details. Left-padding of the gtin values is not required or encouraged. The [[gtin]] property generalizes the earlier [[gtin8]], [[gtin12]], [[gtin13]], and [[gtin14]] properties.\n\nThe GS1 [digital link specifications](https://www.gs1.org/standards/Digital-Link/) expresses GTINs as URLs (URIs, IRIs, etc.).\nDigital Links should be populated into the [[hasGS1DigitalLink]] attribute.\n\nNote also that this is a definition for how to include GTINs in Schema.org data, and not a definition of GTINs in general - see the GS1 documentation for authoritative details."
  def gtin(%__MODULE__{} = thing, value) do
    %{thing | gtin: value}
  end

  @doc "Sets the Schema.org `gtin12` property.\n\nThe GTIN-12 code of the product, or the product to which the offer refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix, Item Reference, and Check Digit used to identify trade items. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."
  def gtin12(%__MODULE__{} = thing, value) do
    %{thing | gtin12: value}
  end

  @doc "Sets the Schema.org `gtin13` property.\n\nThe GTIN-13 code of the product, or the product to which the offer refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes can be converted into a GTIN-13 code by simply adding a preceding zero. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."
  def gtin13(%__MODULE__{} = thing, value) do
    %{thing | gtin13: value}
  end

  @doc "Sets the Schema.org `gtin14` property.\n\nThe GTIN-14 code of the product, or the product to which the offer refers. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."
  def gtin14(%__MODULE__{} = thing, value) do
    %{thing | gtin14: value}
  end

  @doc "Sets the Schema.org `gtin8` property.\n\nThe GTIN-8 code of the product, or the product to which the offer refers. This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."
  def gtin8(%__MODULE__{} = thing, value) do
    %{thing | gtin8: value}
  end

  @doc "Sets the Schema.org `hasAdultConsideration` property.\n\nUsed to tag an item to be intended or suitable for consumption or use by adults only."
  def has_adult_consideration(%__MODULE__{} = thing, value) do
    %{thing | has_adult_consideration: value}
  end

  @doc "Sets the Schema.org `hasCertification` property.\n\nCertification information about a product, organization, service, place, or person."
  def has_certification(%__MODULE__{} = thing, value) do
    %{thing | has_certification: value}
  end

  @doc "Sets the Schema.org `hasEnergyConsumptionDetails` property.\n\nDefines the energy efficiency Category (also known as \"class\" or \"rating\") for a product according to an international energy efficiency standard."
  def has_energy_consumption_details(%__MODULE__{} = thing, value) do
    %{thing | has_energy_consumption_details: value}
  end

  @doc "Sets the Schema.org `hasGS1DigitalLink` property.\n\nThe <a href=\"https://www.gs1.org/standards/gs1-digital-link\">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly."
  def has_gs1_digital_link(%__MODULE__{} = thing, value) do
    %{thing | has_gs1_digital_link: value}
  end

  @doc "Sets the Schema.org `hasMeasurement` property.\n\nA measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings."
  def has_measurement(%__MODULE__{} = thing, value) do
    %{thing | has_measurement: value}
  end

  @doc "Sets the Schema.org `hasMerchantReturnPolicy` property.\n\nSpecifies a MerchantReturnPolicy that may be applicable."
  def has_merchant_return_policy(%__MODULE__{} = thing, value) do
    %{thing | has_merchant_return_policy: value}
  end

  @doc "Sets the Schema.org `hasPart` property.\n\nIndicates an item or CreativeWork that is part of this item, or CreativeWork (in some sense)."
  def has_part(%__MODULE__{} = thing, value) do
    %{thing | has_part: value}
  end

  @doc "Sets the Schema.org `headline` property.\n\nHeadline of the article."
  def headline(%__MODULE__{} = thing, value) do
    %{thing | headline: value}
  end

  @doc "Sets the Schema.org `height` property.\n\nThe height of the item."
  def height(%__MODULE__{} = thing, value) do
    %{thing | height: value}
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

  @doc "Sets the Schema.org `inProductGroupWithID` property.\n\nIndicates the [[productGroupID]] for a [[ProductGroup]] that this product [[isVariantOf]]. "
  def in_product_group_with_id(%__MODULE__{} = thing, value) do
    %{thing | in_product_group_with_id: value}
  end

  @doc "Sets the Schema.org `includesObject` property.\n\nThis links to a node or nodes indicating the exact quantity of the products included in  an [[Offer]] or [[ProductCollection]]."
  def includes_object(%__MODULE__{} = thing, value) do
    %{thing | includes_object: value}
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

  @doc "Sets the Schema.org `isAccessoryOrSparePartFor` property.\n\nA pointer to another product (or multiple products) for which this product is an accessory or spare part."
  def is_accessory_or_spare_part_for(%__MODULE__{} = thing, value) do
    %{thing | is_accessory_or_spare_part_for: value}
  end

  @doc "Sets the Schema.org `isBasedOn` property.\n\nA resource from which this work is derived or from which it is a modification or adaptation."
  def is_based_on(%__MODULE__{} = thing, value) do
    %{thing | is_based_on: value}
  end

  @doc "Sets the Schema.org `isBasedOnUrl` property.\n\nA resource that was used in the creation of this resource. This term can be repeated for multiple sources. For example, http://example.com/great-multiplication-intro.html."
  def is_based_on_url(%__MODULE__{} = thing, value) do
    %{thing | is_based_on_url: value}
  end

  @doc "Sets the Schema.org `isConsumableFor` property.\n\nA pointer to another product (or multiple products) for which this product is a consumable."
  def is_consumable_for(%__MODULE__{} = thing, value) do
    %{thing | is_consumable_for: value}
  end

  @doc "Sets the Schema.org `isFamilyFriendly` property.\n\nIndicates whether this content is family friendly."
  def is_family_friendly(%__MODULE__{} = thing, value) do
    %{thing | is_family_friendly: value}
  end

  @doc "Sets the Schema.org `isPartOf` property.\n\nIndicates an item or CreativeWork that this item, or CreativeWork (in some sense), is part of."
  def is_part_of(%__MODULE__{} = thing, value) do
    %{thing | is_part_of: value}
  end

  @doc "Sets the Schema.org `isRelatedTo` property.\n\nA pointer to another, somehow related product (or multiple products)."
  def is_related_to(%__MODULE__{} = thing, value) do
    %{thing | is_related_to: value}
  end

  @doc "Sets the Schema.org `isSimilarTo` property.\n\nA pointer to another, functionally similar product (or multiple products)."
  def is_similar_to(%__MODULE__{} = thing, value) do
    %{thing | is_similar_to: value}
  end

  @doc "Sets the Schema.org `isVariantOf` property.\n\nIndicates the kind of product that this is a variant of. In the case of [[ProductModel]], this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a [[ProductGroup]], the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with [[ProductGroup]], this property can apply to any [[Product]] included in the group."
  def is_variant_of(%__MODULE__{} = thing, value) do
    %{thing | is_variant_of: value}
  end

  @doc "Sets the Schema.org `itemCondition` property.\n\nA predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns."
  def item_condition(%__MODULE__{} = thing, value) do
    %{thing | item_condition: value}
  end

  @doc "Sets the Schema.org `keywords` property.\n\nKeywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."
  def keywords(%__MODULE__{} = thing, value) do
    %{thing | keywords: value}
  end

  @doc "Sets the Schema.org `learningResourceType` property.\n\nThe predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'."
  def learning_resource_type(%__MODULE__{} = thing, value) do
    %{thing | learning_resource_type: value}
  end

  @doc "Sets the Schema.org `license` property.\n\nA license document that applies to this content, typically indicated by URL."
  def license(%__MODULE__{} = thing, value) do
    %{thing | license: value}
  end

  @doc "Sets the Schema.org `locationCreated` property.\n\nThe location where the CreativeWork was created, which may not be the same as the location depicted in the CreativeWork."
  def location_created(%__MODULE__{} = thing, value) do
    %{thing | location_created: value}
  end

  @doc "Sets the Schema.org `logo` property.\n\nAn associated logo."
  def logo(%__MODULE__{} = thing, value) do
    %{thing | logo: value}
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

  @doc "Sets the Schema.org `manufacturer` property.\n\nThe manufacturer of the product."
  def manufacturer(%__MODULE__{} = thing, value) do
    %{thing | manufacturer: value}
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

  @doc "Sets the Schema.org `mobileUrl` property.\n\nThe [[mobileUrl]] property is provided for specific situations in which data consumers need to determine whether one of several provided URLs is a dedicated 'mobile site'.\n\nTo discourage over-use, and reflecting intial usecases, the property is expected only on [[Product]] and [[Offer]], rather than [[Thing]]. The general trend in web technology is towards [responsive design](https://en.wikipedia.org/wiki/Responsive_web_design) in which content can be flexibly adapted to a wide range of browsing environments. Pages and sites referenced with the long-established [[url]] property should ideally also be usable on a wide variety of devices, including mobile phones. In most cases, it would be pointless and counter productive to attempt to update all [[url]] markup to use [[mobileUrl]] for more mobile-oriented pages. The property is intended for the case when items (primarily [[Product]] and [[Offer]]) have extra URLs hosted on an additional \"mobile site\" alongside the main one. It should not be taken as an endorsement of this publication style.\n    "
  def mobile_url(%__MODULE__{} = thing, value) do
    %{thing | mobile_url: value}
  end

  @doc "Sets the Schema.org `model` property.\n\nThe model of the product. Use with the URL of a ProductModel or a textual representation of the model identifier. The URL of the ProductModel can be from an external source. It is recommended to additionally provide strong product identifiers via the gtin8/gtin13/gtin14 and mpn properties."
  def model(%__MODULE__{} = thing, value) do
    %{thing | model: value}
  end

  @doc "Sets the Schema.org `mpn` property.\n\nThe Manufacturer Part Number (MPN) of the product, or the product to which the offer refers."
  def mpn(%__MODULE__{} = thing, value) do
    %{thing | mpn: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `negativeNotes` property.\n\nProvides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry \n\nIn the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described. Since product descriptions \ntend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on [[Product]].\n\nThe property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list)."
  def negative_notes(%__MODULE__{} = thing, value) do
    %{thing | negative_notes: value}
  end

  @doc "Sets the Schema.org `nsn` property.\n\nIndicates the [NATO stock number](https://en.wikipedia.org/wiki/NATO_Stock_Number) (nsn) of a [[Product]]. "
  def nsn(%__MODULE__{} = thing, value) do
    %{thing | nsn: value}
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

  @doc "Sets the Schema.org `positiveNotes` property.\n\nProvides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.\n\nIn the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described.\n\nThe property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list)."
  def positive_notes(%__MODULE__{} = thing, value) do
    %{thing | positive_notes: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `producer` property.\n\nThe person or organization who produced the work (e.g. music album, movie, TV/radio series etc.)."
  def producer(%__MODULE__{} = thing, value) do
    %{thing | producer: value}
  end

  @doc "Sets the Schema.org `productID` property.\n\nThe product identifier, such as ISBN. For example: ``` meta itemprop=\"productID\" content=\"isbn:123-456-789\" ```."
  def product_id(%__MODULE__{} = thing, value) do
    %{thing | product_id: value}
  end

  @doc "Sets the Schema.org `productionDate` property.\n\nThe date of production of the item, e.g. vehicle."
  def production_date(%__MODULE__{} = thing, value) do
    %{thing | production_date: value}
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

  @doc "Sets the Schema.org `purchaseDate` property.\n\nThe date the item, e.g. vehicle, was purchased by the current owner."
  def purchase_date(%__MODULE__{} = thing, value) do
    %{thing | purchase_date: value}
  end

  @doc "Sets the Schema.org `recordedAt` property.\n\nThe Event where the CreativeWork was recorded. The CreativeWork may capture all or part of the event."
  def recorded_at(%__MODULE__{} = thing, value) do
    %{thing | recorded_at: value}
  end

  @doc "Sets the Schema.org `releaseDate` property.\n\nThe release date of a product or product model. This can be used to distinguish the exact variant of a product."
  def release_date(%__MODULE__{} = thing, value) do
    %{thing | release_date: value}
  end

  @doc "Sets the Schema.org `releasedEvent` property.\n\nThe place and time the release was issued, expressed as a PublicationEvent."
  def released_event(%__MODULE__{} = thing, value) do
    %{thing | released_event: value}
  end

  @doc "Sets the Schema.org `review` property.\n\nA review of the item."
  def review(%__MODULE__{} = thing, value) do
    %{thing | review: value}
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

  @doc "Sets the Schema.org `size` property.\n\nA standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured [[SizeSpecification]]; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable. "
  def size(%__MODULE__{} = thing, value) do
    %{thing | size: value}
  end

  @doc "Sets the Schema.org `sku` property.\n\nThe Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers."
  def sku(%__MODULE__{} = thing, value) do
    %{thing | sku: value}
  end

  @doc "Sets the Schema.org `slogan` property.\n\nA slogan or motto associated with the item."
  def slogan(%__MODULE__{} = thing, value) do
    %{thing | slogan: value}
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

  @doc "Sets the Schema.org `weight` property.\n\nThe weight of the product or person."
  def weight(%__MODULE__{} = thing, value) do
    %{thing | weight: value}
  end

  @doc "Sets the Schema.org `width` property.\n\nThe width of the item."
  def width(%__MODULE__{} = thing, value) do
    %{thing | width: value}
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
