defmodule SchemaOrg.WorkersUnion do
  @moduledoc "A Workers Union (also known as a Labor Union, Labour Union, or Trade Union) is an organization that promotes the interests of its worker members by collectively bargaining with management, organizing, and political lobbying."

  defstruct [
    :accepted_payment_method,
    :actionable_feedback_policy,
    :additional_type,
    :address,
    :agent_interaction_statistic,
    :aggregate_rating,
    :alternate_name,
    :alumni,
    :area_served,
    :award,
    :awards,
    :brand,
    :company_registration,
    :contact_point,
    :contact_points,
    :corrections_policy,
    :department,
    :description,
    :disambiguating_description,
    :dissolution_date,
    :diversity_policy,
    :diversity_staffing_report,
    :duns,
    :email,
    :employee,
    :employees,
    :ethics_policy,
    :event,
    :events,
    :fax_number,
    :founder,
    :founders,
    :founding_date,
    :founding_location,
    :funder,
    :funding,
    :global_location_number,
    :has_certification,
    :has_credential,
    :has_gs1_digital_link,
    :has_member_program,
    :has_merchant_return_policy,
    :has_offer_catalog,
    :has_pos,
    :has_shipping_service,
    :identifier,
    :image,
    :interaction_statistic,
    :isic_v4,
    :iso6523_code,
    :keywords,
    :knows_about,
    :knows_language,
    :legal_address,
    :legal_name,
    :legal_representative,
    :lei_code,
    :location,
    :logo,
    :main_entity_of_page,
    :makes_offer,
    :member,
    :member_of,
    :members,
    :naics,
    :name,
    :nonprofit_status,
    :number_of_employees,
    :owner,
    :ownership_funding_info,
    :owns,
    :parent_organization,
    :potential_action,
    :publishing_principles,
    :review,
    :reviews,
    :same_as,
    :seeks,
    :service_area,
    :skills,
    :slogan,
    :sponsor,
    :sub_organization,
    :subject_of,
    :tax_id,
    :telephone,
    :unnamed_sources_policy,
    :url,
    :vat_id
  ]

  @json_keys %{
    accepted_payment_method: "acceptedPaymentMethod",
    actionable_feedback_policy: "actionableFeedbackPolicy",
    additional_type: "additionalType",
    address: "address",
    agent_interaction_statistic: "agentInteractionStatistic",
    aggregate_rating: "aggregateRating",
    alternate_name: "alternateName",
    alumni: "alumni",
    area_served: "areaServed",
    award: "award",
    awards: "awards",
    brand: "brand",
    company_registration: "companyRegistration",
    contact_point: "contactPoint",
    contact_points: "contactPoints",
    corrections_policy: "correctionsPolicy",
    department: "department",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    dissolution_date: "dissolutionDate",
    diversity_policy: "diversityPolicy",
    diversity_staffing_report: "diversityStaffingReport",
    duns: "duns",
    email: "email",
    employee: "employee",
    employees: "employees",
    ethics_policy: "ethicsPolicy",
    event: "event",
    events: "events",
    fax_number: "faxNumber",
    founder: "founder",
    founders: "founders",
    founding_date: "foundingDate",
    founding_location: "foundingLocation",
    funder: "funder",
    funding: "funding",
    global_location_number: "globalLocationNumber",
    has_certification: "hasCertification",
    has_credential: "hasCredential",
    has_gs1_digital_link: "hasGS1DigitalLink",
    has_member_program: "hasMemberProgram",
    has_merchant_return_policy: "hasMerchantReturnPolicy",
    has_offer_catalog: "hasOfferCatalog",
    has_pos: "hasPOS",
    has_shipping_service: "hasShippingService",
    identifier: "identifier",
    image: "image",
    interaction_statistic: "interactionStatistic",
    isic_v4: "isicV4",
    iso6523_code: "iso6523Code",
    keywords: "keywords",
    knows_about: "knowsAbout",
    knows_language: "knowsLanguage",
    legal_address: "legalAddress",
    legal_name: "legalName",
    legal_representative: "legalRepresentative",
    lei_code: "leiCode",
    location: "location",
    logo: "logo",
    main_entity_of_page: "mainEntityOfPage",
    makes_offer: "makesOffer",
    member: "member",
    member_of: "memberOf",
    members: "members",
    naics: "naics",
    name: "name",
    nonprofit_status: "nonprofitStatus",
    number_of_employees: "numberOfEmployees",
    owner: "owner",
    ownership_funding_info: "ownershipFundingInfo",
    owns: "owns",
    parent_organization: "parentOrganization",
    potential_action: "potentialAction",
    publishing_principles: "publishingPrinciples",
    review: "review",
    reviews: "reviews",
    same_as: "sameAs",
    seeks: "seeks",
    service_area: "serviceArea",
    skills: "skills",
    slogan: "slogan",
    sponsor: "sponsor",
    sub_organization: "subOrganization",
    subject_of: "subjectOf",
    tax_id: "taxID",
    telephone: "telephone",
    unnamed_sources_policy: "unnamedSourcesPolicy",
    url: "url",
    vat_id: "vatID"
  }

  @doc false
  def __schema_org__, do: %{type: "WorkersUnion", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.WorkersUnion` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `acceptedPaymentMethod` property.\n\nThe payment method(s) that are accepted in general by an organization, or for some specific demand or offer."
  def accepted_payment_method(%__MODULE__{} = thing, value) do
    %{thing | accepted_payment_method: value}
  end

  @doc "Sets the Schema.org `actionableFeedbackPolicy` property.\n\nFor a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement about public engagement activities (for news media, the newsroom’s), including involving the public - digitally or otherwise -- in coverage decisions, reporting and activities after publication."
  def actionable_feedback_policy(%__MODULE__{} = thing, value) do
    %{thing | actionable_feedback_policy: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `address` property.\n\nPhysical address of the item."
  def address(%__MODULE__{} = thing, value) do
    %{thing | address: value}
  end

  @doc "Sets the Schema.org `agentInteractionStatistic` property.\n\nThe number of completed interactions for this entity, in a particular role (the 'agent'), in a particular action (indicated in the statistic), and in a particular context (i.e. interactionService)."
  def agent_interaction_statistic(%__MODULE__{} = thing, value) do
    %{thing | agent_interaction_statistic: value}
  end

  @doc "Sets the Schema.org `aggregateRating` property.\n\nThe overall rating, based on a collection of reviews or ratings, of the item."
  def aggregate_rating(%__MODULE__{} = thing, value) do
    %{thing | aggregate_rating: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `alumni` property.\n\nAlumni of an organization."
  def alumni(%__MODULE__{} = thing, value) do
    %{thing | alumni: value}
  end

  @doc "Sets the Schema.org `areaServed` property.\n\nThe geographic area where a service or offered item is provided."
  def area_served(%__MODULE__{} = thing, value) do
    %{thing | area_served: value}
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

  @doc "Sets the Schema.org `companyRegistration` property.\n\nThe official registration information of a business including the organization that issued it such as Company House or Chamber of Commerce in form of a Certification."
  def company_registration(%__MODULE__{} = thing, value) do
    %{thing | company_registration: value}
  end

  @doc "Sets the Schema.org `contactPoint` property.\n\nA contact point for a person or organization."
  def contact_point(%__MODULE__{} = thing, value) do
    %{thing | contact_point: value}
  end

  @doc "Sets the Schema.org `contactPoints` property.\n\nA contact point for a person or organization."
  def contact_points(%__MODULE__{} = thing, value) do
    %{thing | contact_points: value}
  end

  @doc "Sets the Schema.org `correctionsPolicy` property.\n\nFor an [[Organization]] (e.g. [[NewsMediaOrganization]]), a statement describing (in news media, the newsroom’s) disclosure and correction policy for errors."
  def corrections_policy(%__MODULE__{} = thing, value) do
    %{thing | corrections_policy: value}
  end

  @doc "Sets the Schema.org `department` property.\n\nA relationship between an organization and a department of that organization, also described as an organization (allowing different urls, logos, opening hours). For example: a store with a pharmacy, or a bakery with a cafe."
  def department(%__MODULE__{} = thing, value) do
    %{thing | department: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `dissolutionDate` property.\n\nThe date that this organization was dissolved."
  def dissolution_date(%__MODULE__{} = thing, value) do
    %{thing | dissolution_date: value}
  end

  @doc "Sets the Schema.org `diversityPolicy` property.\n\nStatement on diversity policy by an [[Organization]] e.g. a [[NewsMediaOrganization]]. For a [[NewsMediaOrganization]], a statement describing the newsroom’s diversity policy on both staffing and sources, typically providing staffing data."
  def diversity_policy(%__MODULE__{} = thing, value) do
    %{thing | diversity_policy: value}
  end

  @doc "Sets the Schema.org `diversityStaffingReport` property.\n\nFor an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a report on staffing diversity issues. In a news context this might be for example ASNE or RTDNA (US) reports, or self-reported."
  def diversity_staffing_report(%__MODULE__{} = thing, value) do
    %{thing | diversity_staffing_report: value}
  end

  @doc "Sets the Schema.org `duns` property.\n\nThe Dun & Bradstreet DUNS number for identifying an organization or business person."
  def duns(%__MODULE__{} = thing, value) do
    %{thing | duns: value}
  end

  @doc "Sets the Schema.org `email` property.\n\nEmail address."
  def email(%__MODULE__{} = thing, value) do
    %{thing | email: value}
  end

  @doc "Sets the Schema.org `employee` property.\n\nSomeone working for this organization."
  def employee(%__MODULE__{} = thing, value) do
    %{thing | employee: value}
  end

  @doc "Sets the Schema.org `employees` property.\n\nPeople working for this organization."
  def employees(%__MODULE__{} = thing, value) do
    %{thing | employees: value}
  end

  @doc "Sets the Schema.org `ethicsPolicy` property.\n\nStatement about ethics policy, e.g. of a [[NewsMediaOrganization]] regarding journalistic and publishing practices, or of a [[Restaurant]], a page describing food source policies. In the case of a [[NewsMediaOrganization]], an ethicsPolicy is typically a statement describing the personal, organizational, and corporate standards of behavior expected by the organization."
  def ethics_policy(%__MODULE__{} = thing, value) do
    %{thing | ethics_policy: value}
  end

  @doc "Sets the Schema.org `event` property.\n\nUpcoming or past event associated with this place, organization, or action."
  def event(%__MODULE__{} = thing, value) do
    %{thing | event: value}
  end

  @doc "Sets the Schema.org `events` property.\n\nUpcoming or past events associated with this place or organization."
  def events(%__MODULE__{} = thing, value) do
    %{thing | events: value}
  end

  @doc "Sets the Schema.org `faxNumber` property.\n\nThe fax number."
  def fax_number(%__MODULE__{} = thing, value) do
    %{thing | fax_number: value}
  end

  @doc "Sets the Schema.org `founder` property.\n\nA person or organization who founded this organization."
  def founder(%__MODULE__{} = thing, value) do
    %{thing | founder: value}
  end

  @doc "Sets the Schema.org `founders` property.\n\nA person who founded this organization."
  def founders(%__MODULE__{} = thing, value) do
    %{thing | founders: value}
  end

  @doc "Sets the Schema.org `foundingDate` property.\n\nThe date that this organization was founded."
  def founding_date(%__MODULE__{} = thing, value) do
    %{thing | founding_date: value}
  end

  @doc "Sets the Schema.org `foundingLocation` property.\n\nThe place where the Organization was founded."
  def founding_location(%__MODULE__{} = thing, value) do
    %{thing | founding_location: value}
  end

  @doc "Sets the Schema.org `funder` property.\n\nA person or organization that supports (sponsors) something through some kind of financial contribution."
  def funder(%__MODULE__{} = thing, value) do
    %{thing | funder: value}
  end

  @doc "Sets the Schema.org `funding` property.\n\nA [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."
  def funding(%__MODULE__{} = thing, value) do
    %{thing | funding: value}
  end

  @doc "Sets the Schema.org `globalLocationNumber` property.\n\nThe [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations."
  def global_location_number(%__MODULE__{} = thing, value) do
    %{thing | global_location_number: value}
  end

  @doc "Sets the Schema.org `hasCertification` property.\n\nCertification information about a product, organization, service, place, or person."
  def has_certification(%__MODULE__{} = thing, value) do
    %{thing | has_certification: value}
  end

  @doc "Sets the Schema.org `hasCredential` property.\n\nA credential awarded to the Person or Organization."
  def has_credential(%__MODULE__{} = thing, value) do
    %{thing | has_credential: value}
  end

  @doc "Sets the Schema.org `hasGS1DigitalLink` property.\n\nThe <a href=\"https://www.gs1.org/standards/gs1-digital-link\">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly."
  def has_gs1_digital_link(%__MODULE__{} = thing, value) do
    %{thing | has_gs1_digital_link: value}
  end

  @doc "Sets the Schema.org `hasMemberProgram` property.\n\nMemberProgram offered by an Organization, for example an eCommerce merchant or an airline."
  def has_member_program(%__MODULE__{} = thing, value) do
    %{thing | has_member_program: value}
  end

  @doc "Sets the Schema.org `hasMerchantReturnPolicy` property.\n\nSpecifies a MerchantReturnPolicy that may be applicable."
  def has_merchant_return_policy(%__MODULE__{} = thing, value) do
    %{thing | has_merchant_return_policy: value}
  end

  @doc "Sets the Schema.org `hasOfferCatalog` property.\n\nIndicates an OfferCatalog listing for this Organization, Person, or Service."
  def has_offer_catalog(%__MODULE__{} = thing, value) do
    %{thing | has_offer_catalog: value}
  end

  @doc "Sets the Schema.org `hasPOS` property.\n\nPoints-of-Sales operated by the organization or person."
  def has_pos(%__MODULE__{} = thing, value) do
    %{thing | has_pos: value}
  end

  @doc "Sets the Schema.org `hasShippingService` property.\n\nSpecification of a shipping service offered by the organization."
  def has_shipping_service(%__MODULE__{} = thing, value) do
    %{thing | has_shipping_service: value}
  end

  @doc "Sets the Schema.org `identifier` property.\n\nThe identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.\n        "
  def identifier(%__MODULE__{} = thing, value) do
    %{thing | identifier: value}
  end

  @doc "Sets the Schema.org `image` property.\n\nAn image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."
  def image(%__MODULE__{} = thing, value) do
    %{thing | image: value}
  end

  @doc "Sets the Schema.org `interactionStatistic` property.\n\nThe number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used."
  def interaction_statistic(%__MODULE__{} = thing, value) do
    %{thing | interaction_statistic: value}
  end

  @doc "Sets the Schema.org `isicV4` property.\n\nThe International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place."
  def isic_v4(%__MODULE__{} = thing, value) do
    %{thing | isic_v4: value}
  end

  @doc "Sets the Schema.org `iso6523Code` property.\n\nAn organization identifier as defined in [ISO 6523(-1)](https://en.wikipedia.org/wiki/ISO/IEC_6523). The identifier should be in the `XXXX:YYYYYY:ZZZ` or `XXXX:YYYYYY`format. Where `XXXX` is a 4 digit _ICD_ (International Code Designator), `YYYYYY` is an _OID_ (Organization Identifier) with all formatting characters (dots, dashes, spaces) removed with a maximal length of 35 characters, and `ZZZ` is an optional OPI (Organization Part Identifier) with a maximum length of 35 characters. The various components (ICD, OID, OPI) are joined with a colon character (ASCII `0x3a`). Note that many existing organization identifiers defined as attributes like [leiCode](https://schema.org/leiCode) (`0199`), [duns](https://schema.org/duns) (`0060`) or [GLN](https://schema.org/globalLocationNumber) (`0088`) can be expressed using ISO-6523. If possible, ISO-6523 codes should be preferred to populating [vatID](https://schema.org/vatID) or [taxID](https://schema.org/taxID), as ISO identifiers are less ambiguous."
  def iso6523_code(%__MODULE__{} = thing, value) do
    %{thing | iso6523_code: value}
  end

  @doc "Sets the Schema.org `keywords` property.\n\nKeywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."
  def keywords(%__MODULE__{} = thing, value) do
    %{thing | keywords: value}
  end

  @doc "Sets the Schema.org `knowsAbout` property.\n\nOf a [[Person]], and less typically of an [[Organization]], to indicate a topic that is known about - suggesting possible expertise but not implying it. We do not distinguish skill levels here, or relate this to educational content, events, objectives or [[JobPosting]] descriptions."
  def knows_about(%__MODULE__{} = thing, value) do
    %{thing | knows_about: value}
  end

  @doc "Sets the Schema.org `knowsLanguage` property.\n\nOf a [[Person]], and less typically of an [[Organization]], to indicate a known language. We do not distinguish skill levels or reading/writing/speaking/signing here. Use language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47)."
  def knows_language(%__MODULE__{} = thing, value) do
    %{thing | knows_language: value}
  end

  @doc "Sets the Schema.org `legalAddress` property.\n\nThe legal address of an organization which acts as the officially registered address used for legal and tax purposes. The legal address can be different from the place of operations of a business and other addresses can be part of an organization."
  def legal_address(%__MODULE__{} = thing, value) do
    %{thing | legal_address: value}
  end

  @doc "Sets the Schema.org `legalName` property.\n\nThe official name of the organization, e.g. the registered company name."
  def legal_name(%__MODULE__{} = thing, value) do
    %{thing | legal_name: value}
  end

  @doc "Sets the Schema.org `legalRepresentative` property.\n\nOne or multiple persons who represent this organization legally such as CEO or sole administrator."
  def legal_representative(%__MODULE__{} = thing, value) do
    %{thing | legal_representative: value}
  end

  @doc "Sets the Schema.org `leiCode` property.\n\nAn organization identifier that uniquely identifies a legal entity as defined in ISO 17442."
  def lei_code(%__MODULE__{} = thing, value) do
    %{thing | lei_code: value}
  end

  @doc "Sets the Schema.org `location` property.\n\nThe location of, for example, where an event is happening, where an organization is located, or where an action takes place."
  def location(%__MODULE__{} = thing, value) do
    %{thing | location: value}
  end

  @doc "Sets the Schema.org `logo` property.\n\nAn associated logo."
  def logo(%__MODULE__{} = thing, value) do
    %{thing | logo: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `makesOffer` property.\n\nA pointer to products or services offered by the organization or person."
  def makes_offer(%__MODULE__{} = thing, value) do
    %{thing | makes_offer: value}
  end

  @doc "Sets the Schema.org `member` property.\n\nA member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals."
  def member(%__MODULE__{} = thing, value) do
    %{thing | member: value}
  end

  @doc "Sets the Schema.org `memberOf` property.\n\nAn Organization (or ProgramMembership) to which this Person or Organization belongs."
  def member_of(%__MODULE__{} = thing, value) do
    %{thing | member_of: value}
  end

  @doc "Sets the Schema.org `members` property.\n\nA member of this organization."
  def members(%__MODULE__{} = thing, value) do
    %{thing | members: value}
  end

  @doc "Sets the Schema.org `naics` property.\n\nThe North American Industry Classification System (NAICS) code for a particular organization or business person."
  def naics(%__MODULE__{} = thing, value) do
    %{thing | naics: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `nonprofitStatus` property.\n\nnonprofitStatus indicates the legal status of a non-profit organization in its primary place of business."
  def nonprofit_status(%__MODULE__{} = thing, value) do
    %{thing | nonprofit_status: value}
  end

  @doc "Sets the Schema.org `numberOfEmployees` property.\n\nThe number of employees in an organization, e.g. business."
  def number_of_employees(%__MODULE__{} = thing, value) do
    %{thing | number_of_employees: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `ownershipFundingInfo` property.\n\nFor an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a description of organizational ownership structure; funding and grants. In a news/media setting, this is with particular reference to editorial independence.   Note that the [[funder]] is also available and can be used to make basic funder information machine-readable."
  def ownership_funding_info(%__MODULE__{} = thing, value) do
    %{thing | ownership_funding_info: value}
  end

  @doc "Sets the Schema.org `owns` property.\n\nThings owned by the organization or person."
  def owns(%__MODULE__{} = thing, value) do
    %{thing | owns: value}
  end

  @doc "Sets the Schema.org `parentOrganization` property.\n\nThe larger organization that this organization is a [[subOrganization]] of, if any."
  def parent_organization(%__MODULE__{} = thing, value) do
    %{thing | parent_organization: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `publishingPrinciples` property.\n\nThe publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].\n\nWhile such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.\n"
  def publishing_principles(%__MODULE__{} = thing, value) do
    %{thing | publishing_principles: value}
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

  @doc "Sets the Schema.org `seeks` property.\n\nA pointer to products or services sought by the organization or person (demand)."
  def seeks(%__MODULE__{} = thing, value) do
    %{thing | seeks: value}
  end

  @doc "Sets the Schema.org `serviceArea` property.\n\nThe geographic area where the service is provided."
  def service_area(%__MODULE__{} = thing, value) do
    %{thing | service_area: value}
  end

  @doc "Sets the Schema.org `skills` property.\n\nA statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation."
  def skills(%__MODULE__{} = thing, value) do
    %{thing | skills: value}
  end

  @doc "Sets the Schema.org `slogan` property.\n\nA slogan or motto associated with the item."
  def slogan(%__MODULE__{} = thing, value) do
    %{thing | slogan: value}
  end

  @doc "Sets the Schema.org `sponsor` property.\n\nA person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event."
  def sponsor(%__MODULE__{} = thing, value) do
    %{thing | sponsor: value}
  end

  @doc "Sets the Schema.org `subOrganization` property.\n\nA relationship between two organizations where the first includes the second, e.g., as a subsidiary. See also: the more specific 'department' property."
  def sub_organization(%__MODULE__{} = thing, value) do
    %{thing | sub_organization: value}
  end

  @doc "Sets the Schema.org `subjectOf` property.\n\nA CreativeWork or Event about this Thing."
  def subject_of(%__MODULE__{} = thing, value) do
    %{thing | subject_of: value}
  end

  @doc "Sets the Schema.org `taxID` property.\n\nThe Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain."
  def tax_id(%__MODULE__{} = thing, value) do
    %{thing | tax_id: value}
  end

  @doc "Sets the Schema.org `telephone` property.\n\nThe telephone number."
  def telephone(%__MODULE__{} = thing, value) do
    %{thing | telephone: value}
  end

  @doc "Sets the Schema.org `unnamedSourcesPolicy` property.\n\nFor an [[Organization]] (typically a [[NewsMediaOrganization]]), a statement about policy on use of unnamed sources and the decision process required."
  def unnamed_sources_policy(%__MODULE__{} = thing, value) do
    %{thing | unnamed_sources_policy: value}
  end

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `vatID` property.\n\nThe value-added Tax ID of the organization or person with national prefix (for example IT123456789). Can also be described as [[iso6523Code]] with proper prefix."
  def vat_id(%__MODULE__{} = thing, value) do
    %{thing | vat_id: value}
  end
end
