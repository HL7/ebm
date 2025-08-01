### Understanding the Group Resource

The <b>Group Resource</b> represents a defined collection of entities. The group may be enumerated, meaning that there is a known quantity of group members with or without a listing of the group members. The group may be definitional, meaning there is a structured representation of the characteristics (criteria) that define membership eligiblity, or who or what matches the criteria to be considered a member of the group. The group may be conceptual, meaning that there is a structured representation of the characteristics (criteria) that express a complex definition, but the type of group member may be an abstract concept.

#### Group.type

The Group.type element is used to classify the type of group member in terms of FHIR types with options limited to person, animal, practitioner, device, careteam, healthcareservice, location, organization, relatedperson, and specimen. Group.type is a required element in the use of <b>Group Resource</b> for health data exchange, and is technically required if the Group.membership element has a value of 'definitional' or 'enumerated'.

In other words, type is letting you know the type of group (Person, Specimen,...).  The choices in Group.type are limited to concepts represented in FHIR. If type is person, then the members would have to be resources of type person. If type is device, you will expect a different set of resources. 

#### Group.membership

The Group.membership element is used to classify the <b>Group Resource</b> as conceptual, definitional or enumerated, and is a required element.

- *enumerated*: Use this code if you desire to list the group members and/or specify the number of entities in the group.

- *definitional*: Use this code if the Group.characteristic value(s) specified are both necessary and sufficient to determine qualifications for membership (for defining what makes something a member of the group). If a group is both enumerated and definitional, then use the enumerated code.

- *conceptual*: Use this code if the Group is neither enumerated (listing or counting actual members) nor definitional (providing complete definition for membership qualifications). A different use of conceptual is when the 'conceptual' Group is a 'definitional' Group in which the Group.type is not bound to FHIR types.

#### Group.code

Group.code is used to describe the kind of group members, especially when a more specific classification than the Group.type value is desired. For example, if Group.type is 'animal', then Group.code may be 'cow'. If Group.type is 'device', then Group.code could be 'syringe' or 'cytometer'.

#### Group.quantity

Group.quantity is a count of group members, so it must be an integer if used.

#### Group.combinationMethod

Group.combinationMethod is used when there are two or more Group.characteristic instances to define how the characteristics are combined. 

- Use a code *all-of* to indicate that each of the characteristics must be met. This is functionally equivalent to  combining all characteristics with an AND operator.
- Use a code *any-of* to indicate that at least one of the characteristics must be met. This is functionally equivalent to combining all characteristics with an OR operator.
- Use a code *at-least* to indicate that at least n of the characteristics must be met. Use Group.combinationThreshold to specify the value of n.
- Use a code *at-most* to indicate that at most n of the characteristics must be met. Use Group.combinationThreshold to specify the value of n.
- Use a code *except-subset* to indicate that the characteristics expressed as exclusion criteria are used as exceptions to meeting the characteristics expressed as inclusion criteria. Explaining by example: “Cancer of any kind (except basal cell skin cancer or cancer in situ) unless documented to be disease-free for five years” (https://fevir.net/resources/Group/170441)

#### Group.combinationThreshold

Group.combinationThreshold provides the value of "n" when *at-least* or *at-most* codes are used for the Group.combinationMethod element.

#### Group.characteristic

The <b>Group Resource</b> uses a repeatable characteristic element to define inclusion and exclusion criteria. This characteristic element includes numerous elements:

.. code is a required element and uses a CodeableConcept datatype to represent the type of characterstic. 

.. value[x] is a required element, with datatype of CodeableConcept, boolean, Quantity, Range, Reference, uri, or Expression, to represent the matching value for the type of characteristic.

.. exclude is a required boolean to determine if this is an inclusion or exclusion criterion.

.. description uses a markdown datatype and supports a human-readable description of the characteristic. A short, natural language description of the characteristic could be used to communicate the criterion to an end-user.  The description element is for convenience so that end users can understand the characteristic and is neither a required part of the characteristic nor part of the structured representation of the characteristic.

.. method uses a CodeableConcept datatype and supports specification of how the value of the characteristic is determined. The method modifies the Group.characteristic.code and indicates how the value is to be determined.  For example, HbA1c values can be determined by High-Performance Liquid Chromatography (HPLC) or by capillary electrophoresis. The method may be expressed as multiple concepts, e.g. standing barefoot for height measurements could be expressed as two separate concepts (standing and barefoot) that express the method.

.. determinedBy[x] is an optional element using either a Reference datatype (determinedByReference) to specify a <b>Device</b>, <b>DeviceMetric</b>, or <b>DeviceDefinition</b> used to determine the value of the characteristic or an Expression datatype (determinedByExpression) to specify the formula or calculation used to determine the value of the characteristic. The Group.characteristic.determinedBy[x] element value modifies the Group.characteristic.code and indicates how the value is to be determined.  This provides a means of expressing or modifying the method, not as a set of concepts, but as either a reference to a device or as an Expression.  The reference to a device can be either to a specific device using the Device Resource or the DeviceMetric Resource if a specific set of device parameters is needed, or a type of device using the DeviceDefinition Resource.

.. offset uses a CodeableConcept datatype and supports specification of a reference point from which the value is measured, e.g., 2 units above the upper normal limit would be expressed with a valueQuantity of 2 units and an offset with a coding for Upper Normal Limit. The offset defines the reference point for comparison when other than 0.  To express a characteristic of a calcium level greater than the normal limit or a hemoglobin level less than 1 g/dL below the reference range, the offset concept would represent "normal limit" or "reference range". This is a modifier element because it modifies the meaning of the characteristic.value[x].

.. instances[x] using either a Quantity datatype (instancesQuantity) or Range datatype (instancesRange) is used to express the number of times the characteristic is met, i.e. the number of occurrences meeting the characteristic. There should be a constraint on the Quantity.value and Range.low.value and Range.high.value that it can only be non-negative whole numbers.

.. duration[x] using either a Duration datatype (durationDuration) or Range datatype (durationRange) is used to express how long the characteristic is met, i.e. the length of time in which the characteristic is met.

.. period is an optional element using Period datatype for when in calendar time the characteristic applies.

.. timing uses a RelativeTime datatype to express timing relative to an event or context other than calendar time, e.g. within a month following patient discharge.

Note: RelativeTime is a new datatype in FHIR version R6. RelativeTime is used to express a point in time or an interval of time relative to an event defined in data types other than dateTime.

Example representing "at 12 months form inclusion in a clinical trial" from https://fevir.net/resources/Group/172484 with inclusion defined as enrollment:

 "timing": [
        {
          "contextCode": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "709491003",
                "display": "Enrollment in clinical trial"
              }
            ]
          },
          "offsetDuration": {
            "value": 12,
            "unit": "months",
            "system": "http://unitsofmeasure.org",
            "code": "mo"
          },
          "text": "at 12 months"
        }
 ]

#### Group.characteristic examples of code and value[x]

Each characteristic must have a code value (CodeableConcept datatype) to specify the attribute. 

For a characteristic of "age > 18 years” the attribute is “age” and the attribute of age may be expressed as:

"code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "397669002",
            "display": "Age"
          }
        ]
      }

For a characteristic of "Body mass index >= 30 kg/m2" the attribute is "Body mass index" and the attribute may be expressed as:
 
      
      "code": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "39156-5",
            "display": "Body mass index (BMI) [Ratio]"
          }
        ]
      }

(Examples taken from https://fevir.net/resources/Group/171819)

Each characteristic must have a value[x] value to specify the value of the attribute that holds for members of the group. There is no [x] in the JSON or XML expression as it is replaced with the data type (CodeableConcept, boolean, Quantity, Range, Reference, uri, or Expression)

For a characteristic of "age > 18 years” the value is “> 18 years” and the value may be expressed with a Quantity datatype as:

"valueQuantity": {
        "comparator": ">=",
        "value": 18,
        "unit": "years",
        "system": "http://unitsofmeasure.org",
        "code": "a"
             }

Ror a characteristic of "Body mass index >= 30 kg/m2" the value is ">= 30 kg/m2" and the value may be expressed as:

"valueQuantity": {
        "comparator": ">=",
        "value": 30,
        "unit": "kg/m2",
        "system": "http://unitsofmeasure.org",
        "code": "kg/m2"
             }

(Examples taken from https://fevir.net/resources/Group/171819)

Sometimes group membership is determined by characteristics not possessed. When this is the case, the Group.characteristic.exclude element has a value of true ("exclude": true). For characteristics that are not exclusion criteria, the Group.characteristic.exclude element has a value of false ("exclude": false). The exclude element is required.

For example, an exclusion criterion of HbA1c ≥ 14.0% is expressed as:

{
      "code": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "59261-8",
            "display": "Hemoglobin A1c/Hemoglobin.total in Blood"
          }
        ]
      },
      "valueQuantity": {
        "value": 14,
        "comparator": ">=",
        "unit": "%",
        "system": "http://unitsofmeasure.org",
        "code": "%"
      },
      "exclude": true
    }

Example modified from:

StudyEligibilityCriteria: Eligibility Criteria for Bariatric Surgery Randomized Trial (Diabetes Surgery Study) [Database Entry: FHIR Group Resource]. Contributors: Brian S. Alper [Authors/Creators]. In: Fast Evidence Interoperability Resources (FEvIR) Platform, FOI 170443. Revised 2022-09-09. Available at: https://fevir.net/resources/Group/170443. Computable resource at: https://fevir.net/resources/Group/170443#json.

#### Group.member

The Group.member element is a BackboneElement (multiple elements per instance) and may have any number of instances. Each instance refers to an actual member of the group.  Each member must be represented in an entity element (Group.member.entity) which uses a Reference datatype, and each member may optionally have a period element (Group.member.period) with a Period datatype for the timeframe of group membership and an inactive element (Group.member.inactive) with a boolean datatype to denote if a member is no longer in the group.

### Profiles of Group Resource

The **[GroupR6 Profile][GroupR6]** is a base for all other Group Profiles. Extensions for metadata about the Group Resource include author, citeAs, and relatesTo. An extension for characteristicExpression allows use of an Expression datatype to represent the group definition instead of using the characteristic element.

The **[CohortDefinition Profile][CohortDefinition]** is a Profile of **[GroupR6][GroupR6]** that is used to provide a definitional representation of a group. The Group.membership value is definitional, and the quantity and member elements are not used in the **[CohortDefinition Profile][CohortDefinition]**.
The **[CohortDefinition Profile][CohortDefinition]** may be used to support characteristics that are combinations of two or more characteristics. For example, a group defined by females who are are > 20 years old or have red hair would be defined with combinationMethod = 'all-of' and 2 characteristic instances: {code sex, valueCodeableConcept female} and {code Defined by Reference, valueReference CohortDefinition: > 20y or red hair}. 
The CohortDefinition: > 20y or red hair would be defined with combinationMethod = 'any-of' and 2 characteristic instances: {code age, valueQuantity > 20 years} and {code hair color, valueCodeableConcept red}.

Profiles of **[CohortDefinition][CohortDefinition]** used for the inclusion and exclusion criteria of specific definitional groups include the **[StudyEligibilityCriteria Profile][StudyEligibilityCriteria]** (for a research study) and the **[RecommendationEligibilityCriteria Profile][RecommendationEligibilityCriteria]** (for a clinical practice guideline recommendation). These Profiles are not currently structurally different than **[CohortDefinition][CohortDefinition]** but are separated for future development in case of specialized developments for eligibility criteria.

The **[ConceptualCohortDefinition Profile][ConceptualCohortDefinition]** is a Profile of **[GroupR6][GroupR6]** that is used to provide a conceptual representation of a group. The Group.membership value is conceptual , and the quantity and member elements are not used in the **[ConceptualCohortDefinition Profile][ConceptualCohortDefinition]**.

Profiles of **[ConceptualCohortDefinition][ConceptualCohortDefinition]** used for the inclusion and exclusion criteria of specific conceptual groups include the **[SystematicReviewEligibilityCriteria Profile][SystematicReviewEligibilityCriteria]** (for a systematic review) and the **[MetaanalysisEligibilityCriteria Profile][MetaanalysisEligibilityCriteria]** (for a statistical meta-analysis). These Profiles are not currently structurally different than **[ConceptualCohortDefinition][ConceptualCohortDefinition]** but are separated for future development in case of specialized developments for eligibility criteria.

The **[ConceptualExposureDefinition][ConceptualExposureDefinition]**, **[ConceptualComparatorDefinition][ConceptualComparatorDefinition]**, **[OutcomeDefinition][OutcomeDefinition]**, and **[MetaanalysisOutcomeDefinition][MetaanalysisOutcomeDefinition]** Profiles are Profiles of **[ConceptualCohortDefinition][ConceptualCohortDefinition]** used for the definition of evidence variables. These Profiles are not currently structurally different than **[ConceptualCohortDefinition][ConceptualCohortDefinition]** but are separated for future development in case of specialized developments for variable definitions.

The **[SearchStrategy Profile][SearchStrategy]** is a Profile of **[ConceptualCohortDefinition][ConceptualCohortDefinition]** used for defining a literature search. The **[SearchStrategy Profile][SearchStrategy]** provides a SearchStrategyCharacteristic Value Set for use with the Group.characteristc.code element.

The **[ExposureGroup][ExposureGroup]** and **[ComparatorGroup][ComparatorGroup]** Profiles are Profiles of **[GroupR6][GroupR6]** used to support 'enumerated' groups.

The **[NetEffectContributions Profile][NetEffectContributions]** is a Profile of **[GroupR6][GroupR6]** used to represent an enumerated group of participants in a net effect analysis where the participants are Evidence Resources (**[NetEffectContribution Profile][NetEffectContribution]**). Because <b>Evidence Resources</b> are not among the allowed values in Group.type and not among the allowed values in Group.member.entity, the type of group member is expressed as "Net Effect Contribution" in Group.code.text and the method of listing group members is to use a single characteristic with a code.text value of "Member of" and a valueReference which references a **[NetEffectContributionList Profile][NetEffectContributionList]** of List Resource. The Group.membership value is set to 'conceptual' and Group.type is not used.

The **[StudyGroup Profile][StudyGroup]** is a Profile of **[GroupR6][GroupR6]** used to represent an enumerated group of participants in a research study. The membership value is set to 'enumerated'.

The **[MetaanalysisStudyGroup Profile][MetaanalysisStudyGroup]** is a Profile of **[GroupR6][GroupR6]** used to represent an enumerated group of participants in a meta-analysis where the participants are <b>Evidence Resources</b>. Because <b>Evidence Resources</b> are not among the allowed values in Group.type and not among the allowed values in Group.member.entity, the type of group member is expressed as "Evidence" in Group.code.text and the method of listing group members is to use a single characteristic with a code.text value of "Member of" and a valueReference which references an **[EvidenceList Profile][EvidenceList]** of List Resource. The Group.membership value is set to 'conceptual' and Group.type is not used.

The **[EvidenceReportSubject Profile][EvidenceReportSubject]** is a Profile of **[ConceptualCohortDefinition][ConceptualCohortDefinition]** used to define the subject of an **[EvidenceReport][EvidenceReport]**. The report subject is defined conceptually as a combination ('all-of') of characteristics. Any characteristic is optional (as there are many types of evidence reports) but common types of characteristics suggested in the Implementation Guide include Population (referencing <b>Group</b>), Intervention or Exposure (referencing <b>EvidenceVariable</b> or <b>Group</b>), Comparator (referencing <b>EvidenceVariable</b> or <b>Group</b>), and Outcomes (referencing **[OutcomeList][OutcomeList]**).

The **[ComparativeEvidenceReportSubject Profile][ComparativeEvidenceReportSubject]** is a Profile of **[EvidenceReportSubject][EvidenceReportSubject]** which requires the use of Population (constrained to reference **[StudyGroup][StudyGroup]**), Intervention or Exposure (constrained to reference **[VariableDefinition][VariableDefinition]** or **[ConceptualExposureDefinition][ConceptualExposureDefinition]**), Comparator (constrained to reference **[VariableDefinition][VariableDefinition]** or **[ConceptualExposureDefinition][ConceptualExposureDefinition]** or **[ConceptualComparatorDefinition][ConceptualComparatorDefinition]**), and Outcomes (constrained to reference **[OutcomeList][OutcomeList]**).

{% include link-list.md %}
