## EBMonFHIR Implementation Guide

Welcome to the EBMonFHIR Implementation Guide!

The FHIR Resources for Evidence Based Medicine Knowledge Assets ('EBMonFHIR') Implementation Guide defines profiles and value sets for the representation of scientific knowledge. This implementation guide is intended for developers of systems using FHIR for data exchange of scientific knowledge and for authors of more specialized implementation guides in this domain.

This implementation guide covers the broad scope of representation of scientific knowledge, including (1) citations to represent identification, location, classification, and attribution for knowledge artifacts; (2) research results including the statistic findings, definition of variables for which those findings apply, and the certainty of these findings; (3) assessments of research results; (4) aggregation and synthesis of research results; (5) judgments regarding evidence syntheses and contextual factors related to recommendations; (6) recommendations; and (7) compositions of combinations of these types of knowledge. The types of interoperability covered include syntactic (Resource StructureDefinitions) and semantic (value sets).

### To Learn About FHIR

This implementation guide is based on the HL7 [FHIR](https://hl7.org/fhir/R5/index.html) standard. It uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to review the following prior to reading the rest of this implementation guide.

[FHIR overview](http://hl7.org/fhir/R5/overview.html)
[Developer's introduction](http://hl7.org/fhir/R5/overview-dev.html)
(or [Clinical introduction](http://hl7.org/fhir/R5/overview-clinical.html))
[FHIR data types](http://hl7.org/fhir/R5/datatypes.html)
[Using codes](http://hl7.org/fhir/R5/terminologies.html)
[References between resources](http://hl7.org/fhir/R5/references.html)
[How to read resource & profile definitions](http://hl7.org/fhir/R5/formats.html)
[Base resource](http://hl7.org/fhir/R5/resource.html)
[FHIR Validation](http://hl7.org/fhir/R5/validation.html)

### Terminologies

To download related CodeSystem and ValueSet Resources:

Copy the JSON content from https://fevir.net/resources/CodeSystem/27270#json, https://fevir.net/resources/CodeSystem/27834#json, https://fevir.net/resources/CodeSystem/179423#json, https://fevir.net/resources/ValueSet/179424#json, and https://fevir.net/resources/ValueSet/179431#json, or use the [FEvIR API](https://fevir.net/apidoc).

### Understanding the Evidence Resource

The Evidence Resource is the central atomic component for the Evidence-related Resources. The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures, outcomes, covariates), the statistics (the quantitative results of a study or statistical analysis), and the certainty of this evidence.

Human-readable summaries of the Evidence Resource may be expressed in description, assertion, and note elements. 

The description element is typically used for the primary expression, ideally the factual summary of the content in the structured Resource. 

The assertion element is less commonly used and is typically used for an interpretive expression (sometimes called the conclusion or bottom-line). 

For example, a description that includes a relative risk 0.8 and 95% confidence interval 0.7 to 0.9 for an outcome of mortality may be accompanied by an assertion that the intervention is associated with a reduction in mortality (or the assertion that the intervention reduces mortality). The concept that the intervention is associated with a reduction in mortality is an interpretation and not directly found in the content of the structured Resource. 

The note element may be used for any number of explanatory, variant, or related comments.

The variableDefinition BackboneElement is used to describe what the evidence is about. 

Each variable defined must be assigned a variable role which signals how that variable is used in the statistics within the Evidence Resource. In FHIR version R6, the variableDefinition.variableRole uses a code datatype and the options are population, exposure, outcome, or covariate. This limitation to 4 roles supports extensive combinations for different types of evidence. If subtyping of role is needed, in FHIR version R6 there isa variableDefinition.roleSubtype element with a CodeableConcept datatype. This EBMonFHIR IG uses the FHIR version R5 base, so in an EvidenceR6 Profile the variableDefinition.variableRole element is set to a CodeableConcept specifying use of extensions and extensions on variableDefinition are provided for variableRoleCode and roleSubtype. For comparative evidence, an extension on variableDefinition for comparatorCategory is used to express the categorical value serving as the reference value for the comparison.

The variable definition may be expressed in human-readable form (with a description element) and/or expressed in computable form by referencing Group or EvidenceVariable Resources. In general, Group Resources are used to define populations and EvidenceVariable Resources are used to define exposures, outcomes, and covariates. The variableDefinition elements allow expression of the observed variable and the intended variable. In many forms of expression the Evidence is interpreted for a specific context and recognition of both observed and intended variables is important for understanding the applicability and certainty of the evidence. A directnessMatch element may be used to express the similarity between the observed and intended variable.

Because a statistic can rarely be interpreted without knowing how it was obtained, the Evidence Resource enables expression of the study design. The studyDesign element uses a CodeableConcept datatype to describe any study design features. For evidence derived from synthesis of evidence, the Evidence Resource enables expression of the approach to combining the data. The synthesisType element uses a CodeableConcept datatype to describe the method for combining data from two or more studies.

The heart of the evidence is the statistic. The statistic BackboneElement provides a machine-interpretable expression of a statistic, including the quantity; unit of measure; classification of statistic type; sample size; attributes such as confidence intervals, p values, and heterogeneity estimates; and statistic model characteristics. An Evidence Resource may contain more than one statistic, in which case each statistic matches the same combination of variable definitions.

The certainty BackboneElement provides a machine-interpretable expression of certainty, confidence or quality of the evidence. The certainty BackboneElement can express overall certainty and certainty of any subcomponent concepts using codeable concepts from structured rating systems.

### Profiles of Evidence Resource

The EvidenceR6 Profile is a base for all other Evidence Profiles. The EvidenceR6 Profile adds 3 extensions to variableDefinition (variableRoleCode 1..1, roleSubtype 0..1, and comparatorCategory 0..1), 1 extension to statistic (modelExpression 0..1), 6 extensions to statistic.modelCharacteristic, and 1 extension to statistic.modelCharacteristic.variable

The SingleStudyEvidence Profile simply provide a "not applicable" value for the synthesisType element.

The EvidenceSynthesisEvidence Profile is used for evidence that is combined from two or more studies, and requires use of the synthesisType element to express the method by which evidence was synthesized.

The NonComparativeEvidence Profile requires at least 1 variableDefinition with the role of 'population' and at lease 1 variableDefinition with the role of 'outcome'. Because the variableRoleCode element is an extension in the EBMonFHIR IG and discriminating instances by extension is problematic, the Profile use the note element to identify the variableDefinition in the assigned role. If note are desired at the level of the variableDefinition, the desired content of the note should be added to the description element.

The ComparativeEvidence Profile requires the same structures as noted above for the NonComparativeEvidence Profile and also requires a single variableDefinition with the role of 'exposure'. For this variableDefinition with the role of 'exposure' the observed element may only reference Resources following the GroupAssignment Profile (which specifies the categories for the EvidenceVariable handling) and the comparatorCategory element (extension) must be used to specify the category used as reference point for the comparison.

The ComparatorOnlyEvidence is a Profile of NonComparativeEvidence with guidance on use of the variableDefinition structure: "To report comparator-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Comparator has the variableRole of population, the Intervention is not included in the ComparatorOnlyEvidence, and the Outcome has variableRole of outcome."

The InterventionOnlyEvidence is a Profile of NonComparativeEvidence with guidance on use of the variableDefinition structure: "To report intervention-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Intervention has the variableRole of population, the Comparator is not included in the InterventionOnlyEvidence, and the Outcome has variableRole of outcome."

The BaselineMeasureEvidence Profile is a Profile of NonComparativeEvidence which has the baseline measure in the variableDefinition with the role of 'outcome'.

The ComparativeBaselineMeasureEvidence Profile is a Profile of ComparativeEvidence which has the baseline measure in the variableDefinition with the role of 'outcome'.

The ParticipantFlow Profile is a Profile of NonComparativeEvidence which has the participant flow measure in the variableDefinition with the role of 'outcome'. The intended and directnessMatch elements in variableDefinition are not used. The statistic.numberAffected element is not used because the number counted is the statistic.quantity and the statistic.modelCharacteristic element is not used because simple counting does not require any statistical modeling.

The ComparativeParticipantFlow Profile is a Profile of ComparativeEvidence which has the participant flow measure in the variableDefinition with the role of 'outcome'. The intended and directnessMatch elements in variableDefinition are not used.

The EndpointAnalysisPlan Profile is used for specification of the planned statistical model for analysis of a single endpoint. The statistic.modelCharacteristic.intended element in FHIR version R6 and the statistic.modelCharacteristic.extension:intended element in FHIR version R5 is set to true.

The NetEffectEstimate Profile is used for the result of a net effect analysis. The variableDefinition with the role of 'exposure' is required. The exposure may be described in variableDefinition.description and/or referenced from variableDefinition.observed to a GroupAssignment Profile. Either way, the comparatorCategory needs to be expressed. The variableDefinition with the role of 'outcome' is not used because the statistical combination is functionally working with a 'population' of Evidence Resources (NetEffectContribution Profile) and not an outcome variable that is being processed across observations. The variableDefinition with the role of 'population' will reference a NetEffectContributions Profile of Group Resource. The statistic reported for the net effect estimate is set to use a statistic type of 'Risk Difference', an attribute estimate type of 'Confidence interval', and a model characteristic of 'Net effect analysis'.

The NetEffectContribution Profile is a Profile of ComparativeEvidence which is specialized for an effect estimate (risk difference) multiplied by a relative importance rating of the outcome. The value of the relative importance rating of the outcome is expressed in an OutcomeImportance Profile of ArtifactAssessment. Because the FHIR model does not support direct referencing of an ArtifactAssessment from the variableDefinition, the NetEffectContribution Profile uses a variableDefinition with the role of 'covariate' explicitly labeled as a 'Relative Importance Multiplier' and the OutcomeImportance Resource is referenced from a relatedArtifact element with a type of #amended-with as the multiplier is amending the effect estimate (risk difference). The statistic reported for the net effect contribution is set to use a statistic type of 'Risk Difference', an attribute estimate type of 'Confidence interval', and a model characteristic of 'Net effect contribution analysis'.

### Understanding the EvidenceVariable Resource

The EvidenceVariable Resource describes a single variable used in a statistical analysis.

Evidence may be reported for different types of knowledge. One commonly used format for expression of what evidence is about is the "PICO" format. PICO stands for:

Population - the population within which exposures and outcomes are being considered

Intervention - the conditional state or exposure state being described for which one is expressing the risk of or effect on an outcome

Comparator - the alternative conditional state or alternative exposure state when one is comparing states for the effect on an outcome

Outcome - the result or effect of an intervention or exposure in a population

Sometimes PECO is used instead of PICO to emphasize evaluation of exposures that may not be interventions. Sometimes PICOT is used to express timing of the outcome assessment.

PICO (and its variants like PECO or PICOT) is a universal acronym used in evidence-based medicine communities to clearly express research questions and evidence findings.

The EvidenceVariable Resource allows expression of the components of a PICO question in codeable and reusable formats. The EvidenceVariable.definition element has a CodeableReference datatype which can define the PICO component as a concept and/or reference to a Group Resource for a structured definition.

The EvidenceVariable Resource has a handling element to express the statistical handling as continuous, dichotomous, ordinal, or polychotomous.

For categorical handling (dichotomous, ordinal, or polychotomous), the EvidenceVariable.category element can be used to name each category and express the value that defines the category.

### Profiles of EvidenceVariable Resource

The VariableDefinition Profile is a base for all other EvidenceVariable Profiles. The VariableDefinition Profile adds an extension for the definition as a CodeableReference datatype (consistent with FHIR version R6) and removes the characteristic element used in FHIR version R5 (and replaced with reference to Group Resource from the definition.reference element). The VariableDefinition Profile requires the use of the handling element and adds an extension to the category element (valueReference) to enable reference to a Group Resource for structured definitions of categories that are not able to be expressed adequately with CodeableConcept, Quantity or Range datatypes.

The GroupAssignment Profile is a Profile of VariableDefinition used for ComparativeEvidence (for the variableDefinition in the role of 'exposure'). The GroupAssignment Profile is used to classify an EvidenceVariable as an exposure managed as a categorical variable. The variable definition is 'Defined by handling and category elements' and there must be at least 2 category element instances. The category element instances must have a name, and the name of one of these category element instances will be used in the ComparativeEvidence (in variableDefinition.comparatorCategory) to express the reference value for comparison.

The ParticipantFlowMeasure Profile is a Profile of VariableDefinition used to describe outcome measures for completion and reasons for non-completion of participation in a research study. For simplicity the handling element always has a value of 'dichotomous'.

### Understanding the Group Resource

The Group Resource represents a defined collection of entities. The group may be enumerated, meaning that there is a known quantity of group members with or without a listing of the group members. The group may be definitional, meaning there is a structured representation of the characteristics (criteria) that define membership eligiblity, or who or what matches the criteria to be considered a member of the group.

The Group.type element is used to classify the type of group member in terms of FHIR types with options limited to person, animal, practitioner, device, careteam, healthcareservice, location, organization, relatedperson, and specimen. Group.type is a required element in the use of Group Resource for health data exchange.

The Group.membership element is used to classify the Group Resource as either definitional or enumerated, and is a required element.

In FHIR version R6, a third code (conceptual) is allowed for the Group.membership element value, and Group.type is not required when Group.membership = 'conceptual'. This allows greater flexibility as needed for science data exchange.

In the EBMonFHIR Implementation Guide, which is built on FHIR version R5 so must respect the Group.type and Group.membership requirements, there is no constraints or extensions to change the type or membership element values to concepts not fitting the base requirements. When a Group would be considered 'conceptual' the examples will use 'definitional' and when a Group would not use the type element the example will use 'animal' (as the least likely value to be confused for a real value in the examples used in the EBMonFHIR Implementation Guide).

The base Group Resource in FHIR version R5 uses a repeatable characteristic element to define inclusion and exclusion criteria. This characteristic element includes 4 elements:

.. code which is a required CodeableConcept to represent the type of characterstic

.. value[x] with is a required element, with datatype of CodeableConcept, boolean, Quantity, Range, or Reference, to represent the matching value for the type of characteristic

.. exclude which is a required boolean to determine if this is an inclusion or exclusion criterion

.. period which is an optional Period for when in calendar time the characteristic applies

### Profiles of Group Resource

The GroupR6 Profile is a base for all other Group Profiles. Extensions for metadata about the Group Resource include url, version, versionAlgorithmString, title, experimental, date, publisher, contact, useContext, purpose, copyright, copyrightLabel, author, and relatedArtifact. A modifierExtension for status allows specifying whether the Resource is active, draft, or retired. An extension for characteristicExpression allows use of an Expression datatype to represent the Group definition instead of using the characteristic element.

Extensions for combinationMethod (valueCode choices of all-of, any-of, at-least, at-most, except-subset) and combinationThreshold (valuePositiveInt for use with at-least or at-most) express how 2 or more characteristic instances are combined.

The characteristic element has multiple extensions to support more ways of defining eligibility criteria.

.. valueUri and valueExpression provide additional datatypes for the value of the characteristic

.. description uses a markdown datatype and supports a human-readable description of the characteristic

.. method uses a CodeableConcept datatype and supports specification of how the value of the characteristic is determined

.. determinedByReference uses a Reference datatype to specify a Device, DeviceMetric, or DeviceDefinition used to determine the value of the characteristic

.. determinedByExpression uses an Expression datatype to specify the formula or calculation used to determine the value of the characteristic

.. offset uses a CodeableConcept datatype and supports specification of a reference point from which the value is measured, e.g., 2 units above the upper normal limit would be expressed with a valueQuantity of 2 units and an offset with a coding for Upper Normal Limit

.. instancesQuantity and instancesRange are used to express the number of times the characteristic is met

.. durationDuration and durationRange are used to express how long the characteristic is met

.. timing uses a complex expression (matching the RelativeTime datatype in FHIR version R6) to express timing relative to an event or context other than calendar time

The CohortDefinition is a Profile of GroupR6 that is used to provide a conceptual or definitional representation of a Group. In FHIR version R6, membership = conceptual allows avoiding the required use of type. In this IG for FHIR version R5, membership is definitional and the type value can be ignored for resource content processing. The quantity and member elements are not used in the CohortDefinition Profile.
The CohortDefinition is used to support characteristics that are combinations of two or more characteristics. 

For example, a group defined by females who are are > 20 years old or have red hair would be defined with combinationMethod = 'all-of' and 2 characteristic instances: {code sex, valueCodeableConcept female} and {code Defined by Reference, valueReference CohortDefinition: > 20y or red hair}. 
The CohortDefinition: > 20y or red hair would be defined with combinationMethod = 'any-of' and 2 characteristic instances: {code age, valueQuantity > 20 years} and {code hair color, valueCodeableConcept red}.

Profiles of CohortDefinition used for the inclusion and exclusion criteria of specific conceptual types of groups include the StudyEligibilityCriteria Profile (for a research study), the RecommendationEligibilityCriteria Profile (for a clinical practice guideline recommendation), the SystematicReviewEligibilityCriteria Profile (for a systematic review), the MetaanalysisEligibilityCriteria Profile (for a statistical meta-analysis), and the SearchStrategy Profile (for a literature search). These Profiles are not currently structurally different than CohortDefinition but are separated for future development in case of specialized developments for eligibility criteria.

The ExposureDefinition, ComparatorDefinition, OutcomeDefinition, and MetaanalysisOutcomeDefinition Profiles are Profiles of CohortDefinition used for the definition of evidence variables. These Profiles are not currently structurally different than CohortDefinition but are separated for future development in case of specialized developments for variable definitions.

The ExposureGroup and ComparatorGroup Profiles are Profiles of GroupR6 used to support 'enumerated' groups. When the evidence is about groups that can be typed to FHIR types, the type element can be used and the membership element can be set to 'enumerated'  In FHIR version R6, when the evidence is not about groups that can be typed to FHIR types, the membership element can be set to 'conceptual' to signal non-use of the type element. These Profiles are provided for future development and to maintain consistency between R5 and R6 versions.

The NetEffectContributions Profile is a Profile of GroupR6 used to represent an enumerated group of participants in a net effect analysis where the participants are Evidence Resources (NetEffectContribution Profile). Because Evidence Resources are not among the allowed values in Group.type and not among the allowed values in Group.member.entity, the type of Group member is expressed as "Net Effect Contribution" in Group.code.text and the method of listing group members is to use a single characteristic with a code.text value of "Member of" and a valueReference which references a NetEffectContributionList Profile of List Resource.

The StudyGroup Profile is a Profile of GroupR6 used to represent an enumerated group of participants in a research study. The membership value is set to 'enumerated'.

The MetaanalysisStudyGroup Profile is a Profile of GroupR6 used to represent an enumerated group of participants in a meta-analysis where the participants are Evidence Resources. Because Evidence Resources are not among the allowed values in Group.type and not among the allowed values in Group.member.entity, the type of Group member is expressed as "Evidence" in Group.code.text and the method of listing group members is to use a single characteristic with a code.text value of "Member of" and a valueReference which references an EvidenceList Profile of List Resource.

The EvidenceReportSubject Profile is a Profile of CohortDefinition used to define the subject of an EvidenceReport. The report subject is defined conceptually as a combination ('all-of') of characteristics. Any characteristic is optional (as there are many types of evidence reports) but common types of characteristics suggested in the Implementation Guide include Population (referencing Group), Intervention or Exposure (referencing EvidenceVariable or Group), Comparator (referencing EvidenceVariable or Group), and Outcomes (referencing OutcomeList).

The ComparativeEvidenceReportSubject Profile is a Profile of EvidenceReportSubject which requires the use of Population (constrained to reference StudyGroup), Intervention or Exposure (constrained to reference VariableDefinition or ExposureDefinition), Comparator (constrained to reference VariableDefinition or ExposureDefinition or ComparatorDefinition), and Outcomes (constrained to reference OutcomeList).

### Understanding the Citation Resource

The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.

The scope of the Citation Resource is to describe any aspect of identification, location, authorship, and contributorship to a journal article, report, document, resource, or other knowledge artifact. Citations are used extensively in scholarly communication and important for documenting the evidence or source behind statements of fact, opinion, and interpretation. Citations are also used for acknowledgement of the contributions of individuals and groups to the creation and advancement of knowledge.

Across the academic and scientific community citations are used extensively to reference the knowledge artifacts contributing to current work. For any community searching for reports of research or scholarly publications (such as searching MEDLINE) the citations contain the metadata used for such searches. Standardization of citations supports interoperability across citation managers and adaptation to current needs, such as reports being available on preprint servers before 'final' peer-reviewed published form, need to cite datasets or other alternative forms of expression, or the ability to support citation of FHIR Resources where the FHIR Resource represents research or scholarly publication.

Although citations as a concept are certainly not unique to healthcare, their use within healthcare contexts is ubiquitous, especially as part of the need to cite literature references and scientific knowledge as part of supporting evidence. This need is already manifest in references to the Citation resource from other FHIR resources including ResearchStudy, SubstanceDefinition, and DiagnosticReport. In addition, citations of evidence are a critical aspect of evidence-based medicine and structures to represent citation information are a necessary modeling component in the EBM-on-FHIR project. Without a resource dedicated to this concept, evidence-based medicine concepts and approaches would need to rely on extensions and/or non-FHIR-based solutions to exchange citation information, resulting in more complex and difficult to implement and maintain resource types to support evidence-based medicine.

The Citation Resource can accommodate both human and machine readers. The summary element provides human-readable information.

The Citation Resource has multiple elements containing metadata that describe the citation resource itself, and a citedArtifact element containing metadata that describe the article or artifact being cited.

Attribution of scholarly contributions is expressed in the citedArtifact.contributorship element, which has grown more complex as the nature of authorship and the concerns for credit and acknowledgement are increasingly complex. If an individualized attribution structure is not required, the citedArtifact.contributorship.summary element will do.

"Publication" must now cover books, books series, article series, database registries, database updates, and the like. The citedArtifact.publicationForm element enables this description. Within citedArtifact.publicationForm, the publishedIn element identifies the largest container (journal, book, database, or newspaper) and the remaining elements (covering volume, issue, dates, language, and pagination) are specific to the artifact being cited.

Any resource may have common metadata including publisher, authors, reviewers, editors, endorsers, identifiers and location concepts for the resource. The Citation Resource is expected to be used primarily for citing things that are not FHIR Resources. There is NOT an expectation to provide Citations for most FHIR Resources. However, FHIR Resources can be the subject of Citation Resources when there are additional needs beyond common metadata to use the FHIR Resource as the cited source in other contexts or to support scholarly and scientific contribution attribution to the FHIR Resource content.

The Provenance Resource is used to track the contributions to a resource as it occurs, especially for purposes of confirming authenticity and trust. Citation.citedArtifact.contributorship is used to report the attribution of contributions to the cited artifact, especially for purposes of recognition and acknowledgement, but is not directly reporting the data to support authenticity of the contributions.

The DocumentReference Resource is described as a reference to a document of any kind for any purpose. As the DocumentReference Resource was developed for healthcare data exchange it is modeled to support individualized provenance, security, and artifact relationships as often needed in this context. The Citation Resource was developed for the reference to knowledge artifacts commonly used in scientific and scholarly communication so is modeled to support identification, attribution, classification, status tracking, and representation (summary) of the citation.

Approaches to a citation standard external to FHIR are not well suited for integration with FHIR-based approaches to Evidence and related resources. The MEDLINE citation format is widely used but not extensible for many types of knowledge artifacts that may be cited and not open to community development through open standards development methods. The RIS citation format is widely used but is not a singularly maintained standard and multiple implementations using RIS in different ways leads to confusion and inefficiency.

In many examples derived from the structured data in PubMed MEDLINE, the 'code system' referred to is an external URL that is not structured like a FHIR CodeSystem.  These examples include 'https://meshb.nlm.nih.gov/', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#citationsubset', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#owner_value', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#issn', 'https://www.cas.org/support/documentation/chemical-substances', and 'https://ncithesaurus.nci.nih.gov/ncitbrowser'. 

### Profiles of Citation Resource

The JournalArticleCitation Profile includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Journal Article"

The BookCitation Profile includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Book".

The BookPartCitation includes a citedArtifact.publicationForm.publishedIn.type value of "Book" and a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Book Part".

The DatabaseCitation Profile includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Database".
  
The DatabaseEntryCitation includes a citedArtifact.publicationForm.publishedIn.type value of "Database" and a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Database Entry".

The DatasetCitation Profile includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Dataset".

The PreprintCitation Profile includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Preprint".

The SoftwareCitation Profile includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Executable app".

The WebPageCitation Profile includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Webpage".

### Understanding the ArtifactAssessment Resource

Replace with content.

### Understanding the Composition Resource

Replace with content.

### Dependencies

{% include dependency-table-short.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP Statements

{% include ip-statements.xhtml %}