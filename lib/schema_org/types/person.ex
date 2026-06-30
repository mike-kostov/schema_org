defmodule SchemaOrg.Person do
  @moduledoc "A person (alive, dead, undead, or fictional)."

  defstruct [
    :additional_name,
    :additional_type,
    :address,
    :affiliation,
    :agent_interaction_statistic,
    :alternate_name,
    :alumni_of,
    :award,
    :awards,
    :birth_date,
    :birth_place,
    :brand,
    :call_sign,
    :children,
    :colleague,
    :colleagues,
    :contact_point,
    :contact_points,
    :death_date,
    :death_place,
    :description,
    :disambiguating_description,
    :duns,
    :email,
    :family_name,
    :fax_number,
    :follows,
    :funder,
    :funding,
    :gender,
    :given_name,
    :global_location_number,
    :has_certification,
    :has_credential,
    :has_occupation,
    :has_offer_catalog,
    :has_pos,
    :height,
    :home_location,
    :honorific_prefix,
    :honorific_suffix,
    :identifier,
    :image,
    :interaction_statistic,
    :isic_v4,
    :job_title,
    :knows,
    :knows_about,
    :knows_language,
    :life_event,
    :main_entity_of_page,
    :makes_offer,
    :member_of,
    :naics,
    :name,
    :nationality,
    :net_worth,
    :owner,
    :owns,
    :parent,
    :parents,
    :performer_in,
    :potential_action,
    :pronouns,
    :publishing_principles,
    :related_to,
    :same_as,
    :seeks,
    :sibling,
    :siblings,
    :skills,
    :sponsor,
    :spouse,
    :subject_of,
    :tax_id,
    :telephone,
    :url,
    :vat_id,
    :weight,
    :work_location,
    :works_for
  ]

  @json_keys %{
    additional_name: "additionalName",
    additional_type: "additionalType",
    address: "address",
    affiliation: "affiliation",
    agent_interaction_statistic: "agentInteractionStatistic",
    alternate_name: "alternateName",
    alumni_of: "alumniOf",
    award: "award",
    awards: "awards",
    birth_date: "birthDate",
    birth_place: "birthPlace",
    brand: "brand",
    call_sign: "callSign",
    children: "children",
    colleague: "colleague",
    colleagues: "colleagues",
    contact_point: "contactPoint",
    contact_points: "contactPoints",
    death_date: "deathDate",
    death_place: "deathPlace",
    description: "description",
    disambiguating_description: "disambiguatingDescription",
    duns: "duns",
    email: "email",
    family_name: "familyName",
    fax_number: "faxNumber",
    follows: "follows",
    funder: "funder",
    funding: "funding",
    gender: "gender",
    given_name: "givenName",
    global_location_number: "globalLocationNumber",
    has_certification: "hasCertification",
    has_credential: "hasCredential",
    has_occupation: "hasOccupation",
    has_offer_catalog: "hasOfferCatalog",
    has_pos: "hasPOS",
    height: "height",
    home_location: "homeLocation",
    honorific_prefix: "honorificPrefix",
    honorific_suffix: "honorificSuffix",
    identifier: "identifier",
    image: "image",
    interaction_statistic: "interactionStatistic",
    isic_v4: "isicV4",
    job_title: "jobTitle",
    knows: "knows",
    knows_about: "knowsAbout",
    knows_language: "knowsLanguage",
    life_event: "lifeEvent",
    main_entity_of_page: "mainEntityOfPage",
    makes_offer: "makesOffer",
    member_of: "memberOf",
    naics: "naics",
    name: "name",
    nationality: "nationality",
    net_worth: "netWorth",
    owner: "owner",
    owns: "owns",
    parent: "parent",
    parents: "parents",
    performer_in: "performerIn",
    potential_action: "potentialAction",
    pronouns: "pronouns",
    publishing_principles: "publishingPrinciples",
    related_to: "relatedTo",
    same_as: "sameAs",
    seeks: "seeks",
    sibling: "sibling",
    siblings: "siblings",
    skills: "skills",
    sponsor: "sponsor",
    spouse: "spouse",
    subject_of: "subjectOf",
    tax_id: "taxID",
    telephone: "telephone",
    url: "url",
    vat_id: "vatID",
    weight: "weight",
    work_location: "workLocation",
    works_for: "worksFor"
  }

  @doc false
  def __schema_org__, do: %{type: "Person", json_keys: @json_keys}

  @doc "Builds an empty `SchemaOrg.Person` struct."
  def new, do: %__MODULE__{}

  @doc "Sets the Schema.org `additionalName` property.\n\nAn additional name for a Person, can be used for a middle name."
  def additional_name(%__MODULE__{} = thing, value) do
    %{thing | additional_name: value}
  end

  @doc "Sets the Schema.org `additionalType` property.\n\nAn additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the\n    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."
  def additional_type(%__MODULE__{} = thing, value) do
    %{thing | additional_type: value}
  end

  @doc "Sets the Schema.org `address` property.\n\nPhysical address of the item."
  def address(%__MODULE__{} = thing, value) do
    %{thing | address: value}
  end

  @doc "Sets the Schema.org `affiliation` property.\n\nAn organization that this person is affiliated with. For example, a school/university, a club, or a team."
  def affiliation(%__MODULE__{} = thing, value) do
    %{thing | affiliation: value}
  end

  @doc "Sets the Schema.org `agentInteractionStatistic` property.\n\nThe number of completed interactions for this entity, in a particular role (the 'agent'), in a particular action (indicated in the statistic), and in a particular context (i.e. interactionService)."
  def agent_interaction_statistic(%__MODULE__{} = thing, value) do
    %{thing | agent_interaction_statistic: value}
  end

  @doc "Sets the Schema.org `alternateName` property.\n\nAn alias for the item."
  def alternate_name(%__MODULE__{} = thing, value) do
    %{thing | alternate_name: value}
  end

  @doc "Sets the Schema.org `alumniOf` property.\n\nAn organization that the person is an alumni of."
  def alumni_of(%__MODULE__{} = thing, value) do
    %{thing | alumni_of: value}
  end

  @doc "Sets the Schema.org `award` property.\n\nAn award won by or for this item."
  def award(%__MODULE__{} = thing, value) do
    %{thing | award: value}
  end

  @doc "Sets the Schema.org `awards` property.\n\nAwards won by or for this item."
  def awards(%__MODULE__{} = thing, value) do
    %{thing | awards: value}
  end

  @doc "Sets the Schema.org `birthDate` property.\n\nDate of birth."
  def birth_date(%__MODULE__{} = thing, value) do
    %{thing | birth_date: value}
  end

  @doc "Sets the Schema.org `birthPlace` property.\n\nThe place where the person was born."
  def birth_place(%__MODULE__{} = thing, value) do
    %{thing | birth_place: value}
  end

  @doc "Sets the Schema.org `brand` property.\n\nThe brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person."
  def brand(%__MODULE__{} = thing, value) do
    %{thing | brand: value}
  end

  @doc "Sets the Schema.org `callSign` property.\n\nA [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles."
  def call_sign(%__MODULE__{} = thing, value) do
    %{thing | call_sign: value}
  end

  @doc "Sets the Schema.org `children` property.\n\nA child of the person."
  def children(%__MODULE__{} = thing, value) do
    %{thing | children: value}
  end

  @doc "Sets the Schema.org `colleague` property.\n\nA colleague of the person."
  def colleague(%__MODULE__{} = thing, value) do
    %{thing | colleague: value}
  end

  @doc "Sets the Schema.org `colleagues` property.\n\nA colleague of the person."
  def colleagues(%__MODULE__{} = thing, value) do
    %{thing | colleagues: value}
  end

  @doc "Sets the Schema.org `contactPoint` property.\n\nA contact point for a person or organization."
  def contact_point(%__MODULE__{} = thing, value) do
    %{thing | contact_point: value}
  end

  @doc "Sets the Schema.org `contactPoints` property.\n\nA contact point for a person or organization."
  def contact_points(%__MODULE__{} = thing, value) do
    %{thing | contact_points: value}
  end

  @doc "Sets the Schema.org `deathDate` property.\n\nDate of death."
  def death_date(%__MODULE__{} = thing, value) do
    %{thing | death_date: value}
  end

  @doc "Sets the Schema.org `deathPlace` property.\n\nThe place where the person died."
  def death_place(%__MODULE__{} = thing, value) do
    %{thing | death_place: value}
  end

  @doc "Sets the Schema.org `description` property.\n\nA description of the item."
  def description(%__MODULE__{} = thing, value) do
    %{thing | description: value}
  end

  @doc "Sets the Schema.org `disambiguatingDescription` property.\n\nA sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
  def disambiguating_description(%__MODULE__{} = thing, value) do
    %{thing | disambiguating_description: value}
  end

  @doc "Sets the Schema.org `duns` property.\n\nThe Dun & Bradstreet DUNS number for identifying an organization or business person."
  def duns(%__MODULE__{} = thing, value) do
    %{thing | duns: value}
  end

  @doc "Sets the Schema.org `email` property.\n\nEmail address."
  def email(%__MODULE__{} = thing, value) do
    %{thing | email: value}
  end

  @doc "Sets the Schema.org `familyName` property.\n\nFamily name. In the U.S., the last name of a Person."
  def family_name(%__MODULE__{} = thing, value) do
    %{thing | family_name: value}
  end

  @doc "Sets the Schema.org `faxNumber` property.\n\nThe fax number."
  def fax_number(%__MODULE__{} = thing, value) do
    %{thing | fax_number: value}
  end

  @doc "Sets the Schema.org `follows` property.\n\nThe most generic uni-directional social relation."
  def follows(%__MODULE__{} = thing, value) do
    %{thing | follows: value}
  end

  @doc "Sets the Schema.org `funder` property.\n\nA person or organization that supports (sponsors) something through some kind of financial contribution."
  def funder(%__MODULE__{} = thing, value) do
    %{thing | funder: value}
  end

  @doc "Sets the Schema.org `funding` property.\n\nA [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."
  def funding(%__MODULE__{} = thing, value) do
    %{thing | funding: value}
  end

  @doc "Sets the Schema.org `gender` property.\n\nGender of something, typically a [[Person]], but possibly also fictional characters, animals, etc. While https://schema.org/Male and https://schema.org/Female may be used, text strings are also acceptable for people who are not a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender [[SportsTeam]] can be indicated with a text value of \"Mixed\"."
  def gender(%__MODULE__{} = thing, value) do
    %{thing | gender: value}
  end

  @doc "Sets the Schema.org `givenName` property.\n\nGiven name. In the U.S., the first name of a Person."
  def given_name(%__MODULE__{} = thing, value) do
    %{thing | given_name: value}
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

  @doc "Sets the Schema.org `hasOccupation` property.\n\nThe Person's occupation. For past professions, use Role for expressing dates."
  def has_occupation(%__MODULE__{} = thing, value) do
    %{thing | has_occupation: value}
  end

  @doc "Sets the Schema.org `hasOfferCatalog` property.\n\nIndicates an OfferCatalog listing for this Organization, Person, or Service."
  def has_offer_catalog(%__MODULE__{} = thing, value) do
    %{thing | has_offer_catalog: value}
  end

  @doc "Sets the Schema.org `hasPOS` property.\n\nPoints-of-Sales operated by the organization or person."
  def has_pos(%__MODULE__{} = thing, value) do
    %{thing | has_pos: value}
  end

  @doc "Sets the Schema.org `height` property.\n\nThe height of the item."
  def height(%__MODULE__{} = thing, value) do
    %{thing | height: value}
  end

  @doc "Sets the Schema.org `homeLocation` property.\n\nA contact location for a person's residence."
  def home_location(%__MODULE__{} = thing, value) do
    %{thing | home_location: value}
  end

  @doc "Sets the Schema.org `honorificPrefix` property.\n\nAn honorific prefix preceding a Person's name such as Dr/Mrs/Mr."
  def honorific_prefix(%__MODULE__{} = thing, value) do
    %{thing | honorific_prefix: value}
  end

  @doc "Sets the Schema.org `honorificSuffix` property.\n\nAn honorific suffix following a Person's name such as M.D./PhD/MSCSW."
  def honorific_suffix(%__MODULE__{} = thing, value) do
    %{thing | honorific_suffix: value}
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

  @doc "Sets the Schema.org `jobTitle` property.\n\nThe job title of the person (for example, Financial Manager)."
  def job_title(%__MODULE__{} = thing, value) do
    %{thing | job_title: value}
  end

  @doc "Sets the Schema.org `knows` property.\n\nThe most generic bi-directional social/work relation."
  def knows(%__MODULE__{} = thing, value) do
    %{thing | knows: value}
  end

  @doc "Sets the Schema.org `knowsAbout` property.\n\nOf a [[Person]], and less typically of an [[Organization]], to indicate a topic that is known about - suggesting possible expertise but not implying it. We do not distinguish skill levels here, or relate this to educational content, events, objectives or [[JobPosting]] descriptions."
  def knows_about(%__MODULE__{} = thing, value) do
    %{thing | knows_about: value}
  end

  @doc "Sets the Schema.org `knowsLanguage` property.\n\nOf a [[Person]], and less typically of an [[Organization]], to indicate a known language. We do not distinguish skill levels or reading/writing/speaking/signing here. Use language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47)."
  def knows_language(%__MODULE__{} = thing, value) do
    %{thing | knows_language: value}
  end

  @doc "Sets the Schema.org `lifeEvent` property.\n\nA life event like baptism, communions, Bar Mitzvahs, Aqiqah, Namakarana, Miyamairi, burial, ...."
  def life_event(%__MODULE__{} = thing, value) do
    %{thing | life_event: value}
  end

  @doc "Sets the Schema.org `mainEntityOfPage` property.\n\nIndicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."
  def main_entity_of_page(%__MODULE__{} = thing, value) do
    %{thing | main_entity_of_page: value}
  end

  @doc "Sets the Schema.org `makesOffer` property.\n\nA pointer to products or services offered by the organization or person."
  def makes_offer(%__MODULE__{} = thing, value) do
    %{thing | makes_offer: value}
  end

  @doc "Sets the Schema.org `memberOf` property.\n\nAn Organization (or ProgramMembership) to which this Person or Organization belongs."
  def member_of(%__MODULE__{} = thing, value) do
    %{thing | member_of: value}
  end

  @doc "Sets the Schema.org `naics` property.\n\nThe North American Industry Classification System (NAICS) code for a particular organization or business person."
  def naics(%__MODULE__{} = thing, value) do
    %{thing | naics: value}
  end

  @doc "Sets the Schema.org `name` property.\n\nThe name of the item."
  def name(%__MODULE__{} = thing, value) do
    %{thing | name: value}
  end

  @doc "Sets the Schema.org `nationality` property.\n\nNationality of the person."
  def nationality(%__MODULE__{} = thing, value) do
    %{thing | nationality: value}
  end

  @doc "Sets the Schema.org `netWorth` property.\n\nThe total financial value of the person as calculated by subtracting the total value of liabilities from the total value of assets."
  def net_worth(%__MODULE__{} = thing, value) do
    %{thing | net_worth: value}
  end

  @doc "Sets the Schema.org `owner` property.\n\nA person or organization who owns this Thing."
  def owner(%__MODULE__{} = thing, value) do
    %{thing | owner: value}
  end

  @doc "Sets the Schema.org `owns` property.\n\nThings owned by the organization or person."
  def owns(%__MODULE__{} = thing, value) do
    %{thing | owns: value}
  end

  @doc "Sets the Schema.org `parent` property.\n\nA parent of this person."
  def parent(%__MODULE__{} = thing, value) do
    %{thing | parent: value}
  end

  @doc "Sets the Schema.org `parents` property.\n\nA parents of the person."
  def parents(%__MODULE__{} = thing, value) do
    %{thing | parents: value}
  end

  @doc "Sets the Schema.org `performerIn` property.\n\nEvent that this person is a performer or participant in."
  def performer_in(%__MODULE__{} = thing, value) do
    %{thing | performer_in: value}
  end

  @doc "Sets the Schema.org `potentialAction` property.\n\nIndicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
  def potential_action(%__MODULE__{} = thing, value) do
    %{thing | potential_action: value}
  end

  @doc "Sets the Schema.org `pronouns` property.\n\nA short string listing or describing pronouns for a person. Typically the person concerned is the best authority as pronouns are a critical part of personal identity and expression. Publishers and consumers of this information are reminded to treat this data responsibly, take country-specific laws related to gender expression into account, and be wary of out-of-date data and drawing unwarranted inferences about the person being described.\n\nIn English, formulations such as \"they/them\", \"she/her\", and \"he/him\" are commonly used online and can also be used here. We do not intend to enumerate all possible micro-syntaxes in all languages. More structured and well-defined external values for pronouns can be referenced using the [[StructuredValue]] or [[DefinedTerm]] values.\n"
  def pronouns(%__MODULE__{} = thing, value) do
    %{thing | pronouns: value}
  end

  @doc "Sets the Schema.org `publishingPrinciples` property.\n\nThe publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].\n\nWhile such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.\n"
  def publishing_principles(%__MODULE__{} = thing, value) do
    %{thing | publishing_principles: value}
  end

  @doc "Sets the Schema.org `relatedTo` property.\n\nThe most generic familial relation."
  def related_to(%__MODULE__{} = thing, value) do
    %{thing | related_to: value}
  end

  @doc "Sets the Schema.org `sameAs` property.\n\nURL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."
  def same_as(%__MODULE__{} = thing, value) do
    %{thing | same_as: value}
  end

  @doc "Sets the Schema.org `seeks` property.\n\nA pointer to products or services sought by the organization or person (demand)."
  def seeks(%__MODULE__{} = thing, value) do
    %{thing | seeks: value}
  end

  @doc "Sets the Schema.org `sibling` property.\n\nA sibling of the person."
  def sibling(%__MODULE__{} = thing, value) do
    %{thing | sibling: value}
  end

  @doc "Sets the Schema.org `siblings` property.\n\nA sibling of the person."
  def siblings(%__MODULE__{} = thing, value) do
    %{thing | siblings: value}
  end

  @doc "Sets the Schema.org `skills` property.\n\nA statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation."
  def skills(%__MODULE__{} = thing, value) do
    %{thing | skills: value}
  end

  @doc "Sets the Schema.org `sponsor` property.\n\nA person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event."
  def sponsor(%__MODULE__{} = thing, value) do
    %{thing | sponsor: value}
  end

  @doc "Sets the Schema.org `spouse` property.\n\nThe person's spouse."
  def spouse(%__MODULE__{} = thing, value) do
    %{thing | spouse: value}
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

  @doc "Sets the Schema.org `url` property.\n\nURL of the item."
  def url(%__MODULE__{} = thing, value) do
    %{thing | url: value}
  end

  @doc "Sets the Schema.org `vatID` property.\n\nThe value-added Tax ID of the organization or person with national prefix (for example IT123456789). Can also be described as [[iso6523Code]] with proper prefix."
  def vat_id(%__MODULE__{} = thing, value) do
    %{thing | vat_id: value}
  end

  @doc "Sets the Schema.org `weight` property.\n\nThe weight of the product or person."
  def weight(%__MODULE__{} = thing, value) do
    %{thing | weight: value}
  end

  @doc "Sets the Schema.org `workLocation` property.\n\nA contact location for a person's place of work."
  def work_location(%__MODULE__{} = thing, value) do
    %{thing | work_location: value}
  end

  @doc "Sets the Schema.org `worksFor` property.\n\nOrganizations that the person works for."
  def works_for(%__MODULE__{} = thing, value) do
    %{thing | works_for: value}
  end
end
