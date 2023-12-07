### Understanding the Group Resource

The <b>Group Resource</b> represents a defined collection of entities. The group may be enumerated, meaning that there is a known quantity of group members with or without a listing of the group members. The group may be definitional, meaning there is a structured representation of the characteristics (criteria) that define membership eligiblity, or who or what matches the criteria to be considered a member of the group.

The Group.type element is used to classify the type of group member in terms of FHIR types with options limited to person, animal, practitioner, device, careteam, healthcareservice, location, organization, relatedperson, and specimen. Group.type is a required element in the use of <b>Group Resource</b> for health data exchange.

The Group.membership element is used to classify the <b>Group Resource</b> as either definitional or enumerated, and is a required element.

In FHIR version R6, a third code (conceptual) is allowed for the Group.membership element value, and Group.type is not required when Group.membership = 'conceptual'. This allows greater flexibility as needed for science data exchange.

In the EBMonFHIR Implementation Guide, which is built on FHIR version R5 so must respect the Group.type and Group.membership requirements, there is no constraints or extensions to change the type or membership element values to concepts not fitting the base requirements. When a Group would be considered 'conceptual' the examples will use 'definitional' and when a Group would not use the type element the example will use 'animal' (as the least likely value to be confused for a real value in the examples used in the EBMonFHIR Implementation Guide).

The base <b>Group Resource</b> in FHIR version R5 uses a repeatable characteristic element to define inclusion and exclusion criteria. This characteristic element includes 4 elements:

.. code which is a required CodeableConcept to represent the type of characterstic

.. value[x] with is a required element, with datatype of CodeableConcept, boolean, Quantity, Range, or Reference, to represent the matching value for the type of characteristic

.. exclude which is a required boolean to determine if this is an inclusion or exclusion criterion

.. period which is an optional Period for when in calendar time the characteristic applies

### Profiles of Group Resource

The <b>GroupR6 Profile</b> is a base for all other Group Profiles. Extensions for metadata about the Group Resource include url, version, versionAlgorithmString, title, experimental, date, publisher, contact, useContext, purpose, copyright, copyrightLabel, author, and relatedArtifact. A modifierExtension for status allows specifying whether the Resource is active, draft, or retired. An extension for characteristicExpression allows use of an Expression datatype to represent the group definition instead of using the characteristic element.

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

The <b>CohortDefinition Profile</b> is a Profile of <b>GroupR6</b> that is used to provide a conceptual or definitional representation of a group. In FHIR version R6, membership = conceptual allows avoiding the required use of type. In this IG for FHIR version R5, membership is definitional and the type value can be ignored for resource content processing. The quantity and member elements are not used in the <b>CohortDefinition Profile</b>.
The <b>CohortDefinition Profile</b> is used to support characteristics that are combinations of two or more characteristics. 

For example, a group defined by females who are are > 20 years old or have red hair would be defined with combinationMethod = 'all-of' and 2 characteristic instances: {code sex, valueCodeableConcept female} and {code Defined by Reference, valueReference CohortDefinition: > 20y or red hair}. 
The CohortDefinition: > 20y or red hair would be defined with combinationMethod = 'any-of' and 2 characteristic instances: {code age, valueQuantity > 20 years} and {code hair color, valueCodeableConcept red}.

Profiles of <b>CohortDefinition</b> used for the inclusion and exclusion criteria of specific conceptual types of groups include the <b>StudyEligibilityCriteria Profile</b> (for a research study), the <b>RecommendationEligibilityCriteria Profile</b> (for a clinical practice guideline recommendation), the <b>SystematicReviewEligibilityCriteria Profile</b> (for a systematic review), the <b>MetaanalysisEligibilityCriteria Profile</b> (for a statistical meta-analysis), and the <b>SearchStrategy Profile</b> (for a literature search). These Profiles are not currently structurally different than <b>CohortDefinition</b> but are separated for future development in case of specialized developments for eligibility criteria.

The <b>ExposureDefinition</b>, <b>ComparatorDefinition</b>, <b>OutcomeDefinition</b>, and <b>MetaanalysisOutcomeDefinition Profiles</b> are Profiles of <b>CohortDefinition</b> used for the definition of evidence variables. These Profiles are not currently structurally different than <b>CohortDefinition</b> but are separated for future development in case of specialized developments for variable definitions.

The <b>ExposureGroup</b> and <b>ComparatorGroup Profiles</b> are Profiles of <b>GroupR6</b> used to support 'enumerated' groups. When the evidence is about groups that can be typed to FHIR types, the type element can be used and the membership element can be set to 'enumerated'  In FHIR version R6, when the evidence is not about groups that can be typed to FHIR types, the membership element can be set to 'conceptual' to signal non-use of the type element. These Profiles are provided for future development and to maintain consistency between R5 and R6 versions.

The <b>NetEffectContributions Profile</b> is a Profile of <b>GroupR6</b> used to represent an enumerated group of participants in a net effect analysis where the participants are Evidence Resources (<b>NetEffectContribution Profile</b>). Because <b>Evidence Resources</b> are not among the allowed values in Group.type and not among the allowed values in Group.member.entity, the type of group member is expressed as "Net Effect Contribution" in Group.code.text and the method of listing group members is to use a single characteristic with a code.text value of "Member of" and a valueReference which references a <b>NetEffectContributionList Profile</b> of List Resource.

The <b>StudyGroup Profile</b> is a Profile of <b>GroupR6</b> used to represent an enumerated group of participants in a research study. The membership value is set to 'enumerated'.

The <b>MetaanalysisStudyGroup Profile</b> is a Profile of <b>GroupR6</b> used to represent an enumerated group of participants in a meta-analysis where the participants are <b>Evidence Resources</b>. Because <b>Evidence Resources</b> are not among the allowed values in Group.type and not among the allowed values in Group.member.entity, the type of group member is expressed as "Evidence" in Group.code.text and the method of listing group members is to use a single characteristic with a code.text value of "Member of" and a valueReference which references an <b>EvidenceList Profile</b> of List Resource.

The <b>EvidenceReportSubject Profile</b> is a Profile of <b>CohortDefinition</b> used to define the subject of an <b>EvidenceReport</b>. The report subject is defined conceptually as a combination ('all-of') of characteristics. Any characteristic is optional (as there are many types of evidence reports) but common types of characteristics suggested in the Implementation Guide include Population (referencing <b>Group</b>), Intervention or Exposure (referencing <b>EvidenceVariable</b> or <b>Group</b>), Comparator (referencing <b>EvidenceVariable</b> or <b>Group</b>), and Outcomes (referencing <b>OutcomeList</b>).

The <b>ComparativeEvidenceReportSubject Profile</b> is a Profile of <b>EvidenceReportSubject</b> which requires the use of Population (constrained to reference <b>StudyGroup</b>), Intervention or Exposure (constrained to reference <b>VariableDefinition</b> or <b>ExposureDefinition</b>), Comparator (constrained to reference <b>VariableDefinition</b> or <b>ExposureDefinition</b> or <b>ComparatorDefinition</b>), and Outcomes (constrained to reference <b>OutcomeList</b>).

