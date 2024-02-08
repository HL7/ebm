### Understanding the Group Resource

The <b>Group Resource</b> represents a defined collection of entities. The group may be enumerated, meaning that there is a known quantity of group members with or without a listing of the group members. The group may be definitional, meaning there is a structured representation of the characteristics (criteria) that define membership eligiblity, or who or what matches the criteria to be considered a member of the group.

#### Group.type

The Group.type element is used to classify the type of group member in terms of FHIR types with options limited to person, animal, practitioner, device, careteam, healthcareservice, location, organization, relatedperson, and specimen. Group.type is a required element in the use of <b>Group Resource</b> for health data exchange.

In other words, type is letting you know the type of group (Person, Specimen,...).  The choices in Group.type are limited to concepts represented in FHIR. If type is person, then the members would have to be resources of type person. If type is device, you will expect a different set of resources. 

In FHIR version R5, the Group.type element is required. In FHIR version R6, the Group.type element is required if the Group.membership element has a value of definitional or enumerated. 

#### Group.membership

The Group.membership element is used to classify the <b>Group Resource</b> as either definitional or enumerated, and is a required element.

- 'enumerated': Use this code if you desire to list the group members and/or specify the number of entities in the group.

- 'definitional': Use this code if the Group.characteristic value(s) specified are both necessary and sufficient to determine qualifications for membership (for defining what makes something a member of the group). If a group is both enumerated and definitional, then use the enumerated code.

In FHIR version R6, a third code (conceptual) is allowed for the Group.membership element value, and Group.type is not required when Group.membership = 'conceptual'. This allows greater flexibility as needed for science data exchange.

- 'conceptual': Use this code if the Group is neither enumerated (listing or counting actual members) nor definitional (providing complete definition for membership qualifications). A different use of conceptual is when the 'conceptual' Group is a 'definitional' Group in which the Group.type is not bound to FHIR types.

In the EBMonFHIR Implementation Guide, which is built on FHIR version R5 so must respect the Group.type and Group.membership requirements, there is no constraints or extensions to change the type or membership element values to concepts not fitting the base requirements. When a Group would be considered 'conceptual' the examples will use 'definitional' and when a Group would not use the type element the example will use 'animal' (as the least likely value to be confused for a real value in the examples used in the EBMonFHIR Implementation Guide).

#### Group.characteristic

The base <b>Group Resource</b> in FHIR version R5 uses a repeatable characteristic element to define inclusion and exclusion criteria. This characteristic element includes 4 elements:

.. code which is a required CodeableConcept to represent the type of characterstic

.. value[x] with is a required element, with datatype of CodeableConcept, boolean, Quantity, Range, or Reference, to represent the matching value for the type of characteristic

.. exclude which is a required boolean to determine if this is an inclusion or exclusion criterion

.. period which is an optional Period for when in calendar time the characteristic applies

### Profiles of Group Resource

The **[GroupR6 Profile][GroupR6]** is a base for all other Group Profiles. Extensions for metadata about the Group Resource include url, version, versionAlgorithmString, title, experimental, date, publisher, contact, useContext, purpose, copyright, copyrightLabel, author, and relatedArtifact. A modifierExtension for status allows specifying whether the Resource is active, draft, or retired. An extension for characteristicExpression allows use of an Expression datatype to represent the group definition instead of using the characteristic element.

Extensions for combinationMethod (valueCode choices of all-of, any-of, at-least, at-most, except-subset) and combinationThreshold (valuePositiveInt for use with at-least or at-most) express how 2 or more characteristic instances are combined.

The characteristic element has multiple extensions to support more ways of defining eligibility criteria.

.. valueUri and valueExpression provide additional datatypes for the value of the characteristic

.. description uses a markdown datatype and supports a human-readable description of the characteristic

.. method uses a CodeableConcept datatype and supports specification of how the value of the characteristic is determined

.. determinedByReference uses a Reference datatype to specify a <b>Device</b>, <b>DeviceMetric</b>, or <b>DeviceDefinition</b> used to determine the value of the characteristic

.. determinedByExpression uses an Expression datatype to specify the formula or calculation used to determine the value of the characteristic

.. offset uses a CodeableConcept datatype and supports specification of a reference point from which the value is measured, e.g., 2 units above the upper normal limit would be expressed with a valueQuantity of 2 units and an offset with a coding for Upper Normal Limit

.. instancesQuantity and instancesRange are used to express the number of times the characteristic is met

.. durationDuration and durationRange are used to express how long the characteristic is met

.. timing uses a complex expression (matching the RelativeTime datatype in FHIR version R6) to express timing relative to an event or context other than calendar time

The **[CohortDefinition Profile][CohortDefinition]** is a Profile of **[GroupR6][GroupR6]** that is used to provide a conceptual or definitional representation of a group. In FHIR version R6, membership = conceptual allows avoiding the required use of type. In this IG for FHIR version R5, membership is definitional and the type value can be ignored for resource content processing. The quantity and member elements are not used in the **[CohortDefinition Profile][CohortDefinition]**.
The **[CohortDefinition Profile][CohortDefinition]** is used to support characteristics that are combinations of two or more characteristics. 

For example, a group defined by females who are are > 20 years old or have red hair would be defined with combinationMethod = 'all-of' and 2 characteristic instances: {code sex, valueCodeableConcept female} and {code Defined by Reference, valueReference CohortDefinition: > 20y or red hair}. 
The CohortDefinition: > 20y or red hair would be defined with combinationMethod = 'any-of' and 2 characteristic instances: {code age, valueQuantity > 20 years} and {code hair color, valueCodeableConcept red}.

Profiles of **[CohortDefinition][CohortDefinition]** used for the inclusion and exclusion criteria of specific conceptual types of groups include the **[StudyEligibilityCriteria Profile][StudyEligibilityCriteria]** (for a research study), the **[RecommendationEligibilityCriteria Profile][RecommendationEligibilityCriteria]** (for a clinical practice guideline recommendation), the **[SystematicReviewEligibilityCriteria Profile][SystematicReviewEligibilityCriteria]** (for a systematic review), the **[MetaanalysisEligibilityCriteria Profile][MetaanalysisEligibilityCriteria]** (for a statistical meta-analysis), and the **[SearchStrategy Profile][SearchStrategy]** (for a literature search). These Profiles are not currently structurally different than **[CohortDefinition][CohortDefinition]** but are separated for future development in case of specialized developments for eligibility criteria.

The **[ExposureDefinition][ExposureDefinition]**, **[ComparatorDefinition][ComparatorDefinition]**, **[OutcomeDefinition][OutcomeDefinition]**, and **[MetaanalysisOutcomeDefinition Profiles][MetaanalysisOutcomeDefinition]** are Profiles of **[CohortDefinition][CohortDefinition]** used for the definition of evidence variables. These Profiles are not currently structurally different than **[CohortDefinition][CohortDefinition]** but are separated for future development in case of specialized developments for variable definitions.

The **[ExposureGroup][ExposureGroup]** and **[ComparatorGroup Profiles][ComparatorGroup]** are Profiles of **[GroupR6][GroupR6]** used to support 'enumerated' groups. When the evidence is about groups that can be typed to FHIR types, the type element can be used and the membership element can be set to 'enumerated'  In FHIR version R6, when the evidence is not about groups that can be typed to FHIR types, the membership element can be set to 'conceptual' to signal non-use of the type element. These Profiles are provided for future development and to maintain consistency between R5 and R6 versions.

The **[NetEffectContributions Profile][NetEffectContributions]** is a Profile of **[GroupR6][GroupR6]** used to represent an enumerated group of participants in a net effect analysis where the participants are Evidence Resources (**[NetEffectContribution Profile][NetEffectContribution]**). Because <b>Evidence Resources</b> are not among the allowed values in Group.type and not among the allowed values in Group.member.entity, the type of group member is expressed as "Net Effect Contribution" in Group.code.text and the method of listing group members is to use a single characteristic with a code.text value of "Member of" and a valueReference which references a **[NetEffectContributionList Profile][NetEffectContributionList]** of List Resource.

The **[StudyGroup Profile][StudyGroup]** is a Profile of **[GroupR6][GroupR6]** used to represent an enumerated group of participants in a research study. The membership value is set to 'enumerated'.

The **[MetaanalysisStudyGroup Profile][MetaanalysisStudyGroup]** is a Profile of **[GroupR6][GroupR6]** used to represent an enumerated group of participants in a meta-analysis where the participants are <b>Evidence Resources</b>. Because <b>Evidence Resources</b> are not among the allowed values in Group.type and not among the allowed values in Group.member.entity, the type of group member is expressed as "Evidence" in Group.code.text and the method of listing group members is to use a single characteristic with a code.text value of "Member of" and a valueReference which references an **[EvidenceList Profile][EvidenceList]** of List Resource.

The **[EvidenceReportSubject Profile][EvidenceReportSubject]** is a Profile of **[CohortDefinition][CohortDefinition]** used to define the subject of an **[EvidenceReport][EvidenceReport]**. The report subject is defined conceptually as a combination ('all-of') of characteristics. Any characteristic is optional (as there are many types of evidence reports) but common types of characteristics suggested in the Implementation Guide include Population (referencing <b>Group</b>), Intervention or Exposure (referencing <b>EvidenceVariable</b> or <b>Group</b>), Comparator (referencing <b>EvidenceVariable</b> or <b>Group</b>), and Outcomes (referencing **[OutcomeList][OutcomeList]**).

The **[ComparativeEvidenceReportSubject Profile][ComparativeEvidenceReportSubject]** is a Profile of **[EvidenceReportSubject][EvidenceReportSubject]** which requires the use of Population (constrained to reference **[StudyGroup][StudyGroup]**), Intervention or Exposure (constrained to reference **[VariableDefinition][VariableDefinition]** or **[ExposureDefinition][ExposureDefinition]**), Comparator (constrained to reference **[VariableDefinition][VariableDefinition]** or **[ExposureDefinition][ExposureDefinition]** or **[ComparatorDefinition][ComparatorDefinition]**), and Outcomes (constrained to reference **[OutcomeList][OutcomeList]**).

{% include link-list.md %}
