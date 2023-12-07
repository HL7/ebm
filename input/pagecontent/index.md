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

The <b>Evidence Resource</b> is the central atomic component for the Evidence-related Resources. The <b>Evidence Resource</b> provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures, outcomes, covariates), the statistics (the quantitative results of a study or statistical analysis), and the certainty of this evidence.

Human-readable summaries of the <b>Evidence Resource</b> may be expressed in description, assertion, and note elements. 

The description element is typically used for the primary expression, ideally the factual summary of the content in the structured Resource. 

The assertion element is less commonly used and is typically used for an interpretive expression (sometimes called the conclusion or bottom-line). 

For example, a description that includes a relative risk 0.8 and 95% confidence interval 0.7 to 0.9 for an outcome of mortality may be accompanied by an assertion that the intervention is associated with a reduction in mortality (or the assertion that the intervention reduces mortality). The concept that the intervention is associated with a reduction in mortality is an interpretation and not directly found in the content of the structured Resource. 

The note element may be used for any number of explanatory, variant, or related comments.

The variableDefinition BackboneElement is used to describe what the evidence is about. 

Each variable defined must be assigned a variable role which signals how that variable is used in the statistics within the <b>Evidence Resource</b>. In FHIR version R6, the variableDefinition.variableRole uses a code datatype and the options are population, exposure, outcome, or covariate. This limitation to 4 roles supports extensive combinations for different types of evidence. If subtyping of role is needed, in FHIR version R6 there isa variableDefinition.roleSubtype element with a CodeableConcept datatype. This EBMonFHIR IG uses the FHIR version R5 base, so in an <b>EvidenceR6 Profile</b> the variableDefinition.variableRole element is set to a CodeableConcept specifying use of extensions and extensions on variableDefinition are provided for variableRoleCode and roleSubtype. For comparative evidence, an extension on variableDefinition for comparatorCategory is used to express the categorical value serving as the reference value for the comparison.

The variable definition may be expressed in human-readable form (with a description element) and/or expressed in computable form by referencing <b>Group</b> or <b>EvidenceVariable Resources</b>. In general, <b>Group Resources</b> are used to define populations and <b>EvidenceVariable Resources</b> are used to define exposures, outcomes, and covariates. The variableDefinition elements allow expression of the observed variable and the intended variable. In many forms of expression the Evidence is interpreted for a specific context and recognition of both observed and intended variables is important for understanding the applicability and certainty of the evidence. A directnessMatch element may be used to express the similarity between the observed and intended variable.

Because a statistic can rarely be interpreted without knowing how it was obtained, the Evidence Resource enables expression of the study design. The studyDesign element uses a CodeableConcept datatype to describe any study design features. For evidence derived from synthesis of evidence, the <b>Evidence Resource</b> enables expression of the approach to combining the data. The synthesisType element uses a CodeableConcept datatype to describe the method for combining data from two or more studies.

The heart of the evidence is the statistic. The statistic BackboneElement provides a machine-interpretable expression of a statistic, including the quantity; unit of measure; classification of statistic type; sample size; attributes such as confidence intervals, p values, and heterogeneity estimates; and statistic model characteristics. An <b>Evidence Resource</b> may contain more than one statistic, in which case each statistic matches the same combination of variable definitions.

The certainty BackboneElement provides a machine-interpretable expression of certainty, confidence or quality of the evidence. The certainty BackboneElement can express overall certainty and certainty of any subcomponent concepts using codeable concepts from structured rating systems.

### Profiles of Evidence Resource

The <b>EvidenceR6 Profile</b> is a base for all other Evidence Profiles. The <b>EvidenceR6 Profile</b> adds 3 extensions to variableDefinition (variableRoleCode 1..1, roleSubtype 0..1, and comparatorCategory 0..1), 1 extension to statistic (modelExpression 0..1), 6 extensions to statistic.modelCharacteristic, and 1 extension to statistic.modelCharacteristic.variable

The <b>SingleStudyEvidence Profile</b> simply provide a "not applicable" value for the synthesisType element.

The <b>EvidenceSynthesisEvidence Profile</b> is used for evidence that is combined from two or more studies, and requires use of the synthesisType element to express the method by which evidence was synthesized.

The <b>NonComparativeEvidence Profile</b> requires at least 1 variableDefinition with the role of 'population' and at lease 1 variableDefinition with the role of 'outcome'. Because the variableRoleCode element is an extension in the EBMonFHIR IG and discriminating instances by extension is problematic, the Profile use the note element to identify the variableDefinition in the assigned role. If note are desired at the level of the variableDefinition, the desired content of the note should be added to the description element.

The <b>ComparativeEvidence Profile</b> requires the same structures as noted above for the NonComparativeEvidence Profile and also requires a single variableDefinition with the role of 'exposure'. For this variableDefinition with the role of 'exposure' the observed element may only reference Resources following the GroupAssignment Profile (which specifies the categories for the EvidenceVariable handling) and the comparatorCategory element (extension) must be used to specify the category used as reference point for the comparison.

The <b>ComparatorOnlyEvidence Profile</b> is a Profile of <b>NonComparativeEvidence</b> with guidance on use of the variableDefinition structure: "To report comparator-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Comparator has the variableRole of population, the Intervention is not included in the ComparatorOnlyEvidence, and the Outcome has variableRole of outcome."

The <b>InterventionOnlyEvidence Profile</b> is a Profile of <b>NonComparativeEvidence</b> with guidance on use of the variableDefinition structure: "To report intervention-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Intervention has the variableRole of population, the Comparator is not included in the InterventionOnlyEvidence, and the Outcome has variableRole of outcome."

The <b>BaselineMeasureEvidence Profile</b> is a Profile of <b>NonComparativeEvidence</b> which has the baseline measure in the variableDefinition with the role of 'outcome'.

The <b>ComparativeBaselineMeasureEvidence Profile</b> is a Profile of <b>ComparativeEvidence</b> which has the baseline measure in the variableDefinition with the role of 'outcome'.

The <b>ParticipantFlow Profile</b> is a Profile of <b>NonComparativeEvidence</b> which has the participant flow measure in the variableDefinition with the role of 'outcome'. The intended and directnessMatch elements in variableDefinition are not used. The statistic.numberAffected element is not used because the number counted is the statistic.quantity and the statistic.modelCharacteristic element is not used because simple counting does not require any statistical modeling.

The <b>ComparativeParticipantFlow Profile</b> is a Profile of <b>ComparativeEvidence</b> which has the participant flow measure in the variableDefinition with the role of 'outcome'. The intended and directnessMatch elements in variableDefinition are not used.

The <b>EndpointAnalysisPlan Profile</b> is used for specification of the planned statistical model for analysis of a single endpoint. The statistic.modelCharacteristic.intended element in FHIR version R6 and the statistic.modelCharacteristic.extension:intended element in FHIR version R5 is set to true.

The <b>NetEffectEstimate Profile</b> is used for the result of a net effect analysis. The variableDefinition with the role of 'exposure' is required. The exposure may be described in variableDefinition.description and/or referenced from variableDefinition.observed to a <b>GroupAssignment Profile</b>. Either way, the comparatorCategory needs to be expressed. The variableDefinition with the role of 'outcome' is not used because the statistical combination is functionally working with a 'population' of Evidence Resources (<b>NetEffectContribution Profile</b>) and not an outcome variable that is being processed across observations. The variableDefinition with the role of 'population' will reference a <b>NetEffectContributions Profile</b> of Group Resource. The statistic reported for the net effect estimate is set to use a statistic type of 'Risk Difference', an attribute estimate type of 'Confidence interval', and a model characteristic of 'Net effect analysis'.

The <b>NetEffectContribution Profile</b> is a Profile of <b>ComparativeEvidence</b> which is specialized for an effect estimate (risk difference) multiplied by a relative importance rating of the outcome. The value of the relative importance rating of the outcome is expressed in an <b>OutcomeImportance Profile</b> of ArtifactAssessment. Because the FHIR model does not support direct referencing of an <b>ArtifactAssessment</b> from the variableDefinition, the <b>NetEffectContribution Profile</b> uses a variableDefinition with the role of 'covariate' explicitly labeled as a 'Relative Importance Multiplier' and the <b>OutcomeImportance Profile</b> is referenced from a relatedArtifact element with a type of #amended-with as the multiplier is amending the effect estimate (risk difference). The statistic reported for the net effect contribution is set to use a statistic type of 'Risk Difference', an attribute estimate type of 'Confidence interval', and a model characteristic of 'Net effect contribution analysis'.

### Understanding the EvidenceVariable Resource

The <b>EvidenceVariable Resource</b> describes a single variable used in a statistical analysis.

Evidence may be reported for different types of knowledge. One commonly used format for expression of what evidence is about is the "PICO" format. PICO stands for:

Population - the population within which exposures and outcomes are being considered

Intervention - the conditional state or exposure state being described for which one is expressing the risk of or effect on an outcome

Comparator - the alternative conditional state or alternative exposure state when one is comparing states for the effect on an outcome

Outcome - the result or effect of an intervention or exposure in a population

Sometimes PECO is used instead of PICO to emphasize evaluation of exposures that may not be interventions. Sometimes PICOT is used to express timing of the outcome assessment.

PICO (and its variants like PECO or PICOT) is a universal acronym used in evidence-based medicine communities to clearly express research questions and evidence findings.

The <b>EvidenceVariable Resource</b> allows expression of the components of a PICO question in codeable and reusable formats. The EvidenceVariable.definition element has a CodeableReference datatype which can define the PICO component as a concept and/or reference to a Group Resource for a structured definition.

The <b>EvidenceVariable Resource</b> has a handling element to express the statistical handling as continuous, dichotomous, ordinal, or polychotomous.

For categorical handling (dichotomous, ordinal, or polychotomous), the EvidenceVariable.category element can be used to name each category and express the value that defines the category.

### Profiles of EvidenceVariable Resource

The <b>VariableDefinition Profile</b> is a base for all other EvidenceVariable Profiles. The <b>VariableDefinition Profile</b> adds an extension for the definition as a CodeableReference datatype (consistent with FHIR version R6) and removes the characteristic element used in FHIR version R5 (and replaced with reference to Group Resource from the definition.reference element). The <b>VariableDefinition Profile</b> requires the use of the handling element and adds an extension to the category element (valueReference) to enable reference to a Group Resource for structured definitions of categories that are not able to be expressed adequately with CodeableConcept, Quantity or Range datatypes.

The <b>GroupAssignment Profile</b> is a Profile of <b>VariableDefinition</b> used for <b>ComparativeEvidence</b> (for the variableDefinition in the role of 'exposure'). The <b>GroupAssignment Profile</b> is used to classify an <b>EvidenceVariable</b> as an exposure managed as a categorical variable. The variable definition is 'Defined by handling and category elements' and there must be at least 2 category element instances. The category element instances must have a name, and the name of one of these category element instances will be used in the <b>ComparativeEvidence</b> (in variableDefinition.comparatorCategory) to express the reference value for comparison.

The <b>ParticipantFlowMeasure Profile</b> is a Profile of <b>VariableDefinition</b> used to describe outcome measures for completion and reasons for non-completion of participation in a research study. For simplicity the handling element always has a value of 'dichotomous'.

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

### Understanding the Citation Resource

The <b>Citation Resource</b> enables reference to any knowledge artifact for purposes of identification and attribution. The <b>Citation Resource</b> supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.

The scope of the <b>Citation Resource</b> is to describe any aspect of identification, location, authorship, and contributorship to a journal article, report, document, resource, or other knowledge artifact. Citations are used extensively in scholarly communication and important for documenting the evidence or source behind statements of fact, opinion, and interpretation. Citations are also used for acknowledgement of the contributions of individuals and groups to the creation and advancement of knowledge.

Across the academic and scientific community citations are used extensively to reference the knowledge artifacts contributing to current work. For any community searching for reports of research or scholarly publications (such as searching MEDLINE) the citations contain the metadata used for such searches. Standardization of citations supports interoperability across citation managers and adaptation to current needs, such as reports being available on preprint servers before 'final' peer-reviewed published form, need to cite datasets or other alternative forms of expression, or the ability to support citation of FHIR Resources where the FHIR Resource represents research or scholarly publication.

Although citations as a concept are certainly not unique to healthcare, their use within healthcare contexts is ubiquitous, especially as part of the need to cite literature references and scientific knowledge as part of supporting evidence. This need is already manifest in references to the <b>Citation Resource</b> from other FHIR resources including <b>ResearchStudy</b>, <b>SubstanceDefinition</b>, and <b>DiagnosticReport</b>. In addition, citations of evidence are a critical aspect of evidence-based medicine and structures to represent citation information are a necessary modeling component in the EBM-on-FHIR project. Without a resource dedicated to this concept, evidence-based medicine concepts and approaches would need to rely on extensions and/or non-FHIR-based solutions to exchange citation information, resulting in more complex and difficult to implement and maintain resource types to support evidence-based medicine.

The <b>Citation Resource</b> can accommodate both human and machine readers. The summary element provides human-readable information.

The <b>Citation Resource</b> has multiple elements containing metadata that describe the citation resource itself, and a citedArtifact element containing metadata that describe the article or artifact being cited.

Attribution of scholarly contributions is expressed in the citedArtifact.contributorship element, which has grown more complex as the nature of authorship and the concerns for credit and acknowledgement are increasingly complex. If an individualized attribution structure is not required, the citedArtifact.contributorship.summary element will do.

"Publication" must now cover books, books series, article series, database registries, database updates, and the like. The citedArtifact.publicationForm element enables this description. Within citedArtifact.publicationForm, the publishedIn element identifies the largest container (journal, book, database, or newspaper) and the remaining elements (covering volume, issue, dates, language, and pagination) are specific to the artifact being cited.

Any resource may have common metadata including publisher, authors, reviewers, editors, endorsers, identifiers and location concepts for the resource. The <b>Citation Resource</b> is expected to be used primarily for citing things that are not FHIR Resources. There is NOT an expectation to provide Citations for most FHIR Resources. However, FHIR Resources can be the subject of <b>Citation Resources</b> when there are additional needs beyond common metadata to use the FHIR Resource as the cited source in other contexts or to support scholarly and scientific contribution attribution to the FHIR Resource content.

The <b>Provenance Resource</b> is used to track the contributions to a resource as it occurs, especially for purposes of confirming authenticity and trust. Citation.citedArtifact.contributorship is used to report the attribution of contributions to the cited artifact, especially for purposes of recognition and acknowledgement, but is not directly reporting the data to support authenticity of the contributions.

The <b>DocumentReference Resource</b> is described as a reference to a document of any kind for any purpose. As the <b>DocumentReference Resource</b> was developed for healthcare data exchange it is modeled to support individualized provenance, security, and artifact relationships as often needed in this context. The <b>Citation Resource</b> was developed for the reference to knowledge artifacts commonly used in scientific and scholarly communication so is modeled to support identification, attribution, classification, status tracking, and representation (summary) of the citation.

Approaches to a citation standard external to FHIR are not well suited for integration with FHIR-based approaches to Evidence and related resources. The MEDLINE citation format is widely used but not extensible for many types of knowledge artifacts that may be cited and not open to community development through open standards development methods. The RIS citation format is widely used but is not a singularly maintained standard and multiple implementations using RIS in different ways leads to confusion and inefficiency.

In many examples derived from the structured data in PubMed MEDLINE, the 'code system' referred to is an external URL that is not structured like a FHIR <b>CodeSystem Resource</b>.  These examples include 'https://meshb.nlm.nih.gov/', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#citationsubset', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#owner_value', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#issn', 'https://www.cas.org/support/documentation/chemical-substances', and 'https://ncithesaurus.nci.nih.gov/ncitbrowser'. 

### Profiles of Citation Resource

The <b>JournalArticleCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Journal Article"

The <b>BookCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Book".

The <b>BookPartCitation</b> includes a citedArtifact.publicationForm.publishedIn.type value of "Book" and a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Book Part".

The <b>DatabaseCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Database".
  
The <b>DatabaseEntryCitation</b> includes a citedArtifact.publicationForm.publishedIn.type value of "Database" and a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Database Entry".

The <b>DatasetCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Dataset".

The <b>PreprintCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Preprint".

The <b>SoftwareCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Executable app".

The <b>WebPageCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Webpage".

### Understanding the ArtifactAssessment Resource

The <b>ArtifactAssessment Resource</b> provides one or more comments, classifiers or ratings about a Resource and supports attribution and rights management metadata for the added content.

The <b>ArtifactAssessment Resource</b> represents one or more assessments of another record or resource. The resource captures metadata about the assessment, as well as the data for the results of the assessment which might include comments, classifications, ratings, questions, and responses.

The <b>ArtifactAssessment Resource</b> provides a structure to communicate judgments or qualitative data about a record (a resource or other set of data with a known identity or URL by which it can be accessed), including comments, corrections, classifications, and ratings. The <b>ArtifactAssessment Resource</b> is used when the content attribution and management rights differ from the record being commented upon, or the commenter desires to separate the comments from the target record. The scope is intended to cover assessments (added information) regarding clinical records about individual human subjects, assessments (added information) regarding healthcare provision for individual persons (such as care plans), and assessments (added information) regarding records related to community knowledge such as scientific evidence and group-oriented guidance.

The artifact[x] element is required and uses a Reference, canonical, or uri datatype to express the single artifact that the assessment is about.

The content element is a BackboneElement and repeatable recursively with a component element. Each content element may contain any of informationType (a code to classify the content unit), summary (a markdown comment), type (a CodeableConcept to classify the type of content), classifier (an array of CodeableConcept for the classifier values), quantity (a Quantity for the classifier value), author (a Reference to the creator of the content), path (an array of uri values if the content is about a part of the artifact[x]), relatedArtifact (an array of RelatedArtifact), freeToShare (a boolean), and component (an array of BackBoneElement using the content structure).

<b>ArtifactAssessment</b> is about the content of a Resource and not about the provenance of the Resource so should not be confused with <b>Provenance</b>.

<b>ArtifactAssessment</b> is not used for communications that are not about a Resource so should not be confused with <b>Communication</b> or <b>Composition</b> (or profiles of Composition) which may be used for the primary communication about the subject matter.

<b>Observation Resource</b> is used extensively for observations about people, groups, devices, locations, substances, and procedures – not about the record describing these entities. <b>ArtifiactAssessment</b> is used for observations where the subject is the artifact or record, not the entity described by the artifact. Simple "assessments" about an <b>Observation</b> such as status, dataAbsentReason, interpretation and note would use the <b>Observation Resource</b> where this is already structured. <b>ArtifactAssessment Resource</b> may be used for complex assessments of an Observation such as justifications for reasons to correct the record.

Across healthcare communities, there are an extensive number of comments and corrections regarding resources where the commenter is not able or permitted to modify the resource content, and there are many situations in which assessments with classifications and ratings of medical record content are made by parties who would not include the assessments in the medical record. Across the academic, scientific, quality measurement development, and clinical decision support communities there is an extensive need to report assessments and feedback about resources and records. These artifact assessments may take multiple forms (including text, classifications, ratings or measurements) and might or might not be created, queried and maintained independently from the artifact being rated or commented upon.

### Profiles of ArtifactAssessment Resource

All Profiles of <b>ArtifactAssessment</b> include extensions for url, description, and author.

The <b>Comment Profile</b> is used for comments about a Resource that may be created independently from Resource creators. <b>Comment</b> content will most commonly be expressed in ArtifactAssessment.content.summary elements.

The <b>Classification Profile</b> is used for classifier tags that may be created independently from Resource creators and may be used for search indexes. <b>Classification</b> content will most commonly be expressed using ArtifactAssessment.content.type and ArtifactAssessment.content.classifier elements.

The <b>Rating Profile</b> is used for classifier tags that may include quantitative ratings and may be created independently from Resource creators. <b>Rating</b> content will most commonly be expressed using ArtifactAssessment.content.type and ArtifactAssessment.content.classifier or ArtifactAssessment.content.quantity elements.

The <b>DateAsRating Profile</b> is a Profile of <b>Classification</b> that is used for representing a date or dateTime as a classifier value. An extension to ArtifactAssessment.content provides the dateAsRating value with a dateTime datatype.

The <b>CertaintyOfEvidence Profile</b> is used for expression of the certainty (also called quality or confidence in the estimates) of an Evidence artifact.

The <b>RiskOfBias Profile</b> is used for expression of the assessment of the threats to validity (or risk of bias) of an Evidence artifact or an artifact consisting of Evidence or the plan to create Evidence.

The <b>RecommendationJustification Profile</b> is used for expressing the rationale, evidence, and judgments supporting a recommendation, such as from a clinical practice guideline.

The <b>OutcomeImportance Profile</b> is used for expression of the relative importance of an outcome. The outcome is typically expressed with an <b>EvidenceVariable Resource</b> and may use the <b>VariableDefinition Profile</b> of EvidenceVariable (or <b>OutcomeDefinition Profile</b> of Group). The ArtifactAssessment.content.quantity.value element is described with "The value must be 0 (no importance) or a positive decimal. The value of 100 represents the importance of the reference outcome. A value greater than 100 represents exceptionally high importance that is higher than the importance of the reference outcome." and the ArtifactAssessment.content.quantity.unit element is set to "%".

The <b>CompositeRating Profile</b> is used for a composite rating or classification of a Resource that may be created following ratings or classifications by two or more parties.

The <b>Adaptation Profile</b> is used for assessments of a knowledge artifact that are used to create a new knowledge artifact through acceptance, rejection or modification of the assessed artifact.

The <b>Comparison Profile</b> is a Profile of <b>Adaptation</b> that is used for assessments of similarities and differences between knowledge artifacts.

### Understanding the Composition Resource

The <b>Composition Resource</b> is a structure for grouping information for purposes of persistence and attestability. The <b>Composition Resource</b> provides the basic structure for a FHIR document. The full content of the document is expressed using a <b>Bundle Resource</b> containing the Composition and its entries (which are references to other FHIR Resources).

Metadata elements in the <b>Composition Resource</b> that are similar to other Resources include url, identifier, version, status (which has different codes than the status used in other Resources), date, useContext, author (which uses a Reference datatype), name, title, and note.

Composition.type is required and uses a CodeableConcept datatype. Composition.category is optional and uses an array of CodeableConcept datatype.

Composition.subject is optional and uses an array of Reference to express what the composition is about. Composition.encounter is optional and uses a single Reference to an Encounter Resource (this is common in health data exchange and uncommon in science data exchange).

Composition.attester is a repeatable BackboneElement that is similar conceptually to reviewer, editor, and endorser elements used in other Resources.

Composition.custodian is optional and references an <b>Organization Resource</b> to represent the 'publisher' of the composition.

Composition.relatesTo is similar to Resource.relatedArtifact used in other Resources. In compositions used for scientific knowledge exchange, there is often a desire to inform the reader how to cite the composition. The relatesTo element may have an instance with a type of "cite-as" to represent how to cite the composition.

Composition.event is a repeatable BackboneElement to represent the clinical service(s) being documented and is not expected to be used commonly in the EBMonFHIR Implementation Guide.

Composition.section is a repeatable and recursive BackboneElement that contains all the content of the composition.

Identifiers of a composition section include section.title (string datatype), section.code (CodeableConcept datatype), and section.focus (Reference datatype).

Metadata about the composition section include section.author (repeatable Reference datatype) and emptyReason (CodeableConcept datatype).

The content of a section may be found in text, entry, and/or section elements.

section.entry is a repeatable Reference.

section.section is a repeatable BackboneElement and section.orderedBy is a CodeableConcept to specify the order of section entries.

section.text is a Narrative datatype used for a text summary of the section. A Narrative datatype contains 2 required elements: section.text.status coded as generated, extensions, additional, or empty and section.text.div with xhtml content.

### Profiles of Composition Resource

The <b>EvidenceReport Profile</b> is used for a base structure (canonical resource management) for a report combining any number of <b>Citation</b>, <b>Evidence</b>, <b>EvidenceVariable</b>, <b>EvidenceReport</b>, and related Resources. The <b>EvidenceReport Profile</b> adds a number of extensions for metadata (<i>versionAlgorithm</i>, <i>experimental</i>, description, purpose,  copyrightLabel, approvalDate, lastReviewDate, and effectivePeriod). The <b>EvidenceReport Profile</b> sets the Composition.type.coding value to an "EvidenceReport" coding. The EvidenceReport Profile limits the number of subject elements to 1 and limits the resource types that can be referenced as the subject to <b>Citation</b>, <b>Classification</b>, <b>EvidenceReportSubject</b>, or <b>ResearchStudy</b>. The Composition.attester.mode element uses a CodeableConcept datatype and a Contributor Role Value Set is provided with preferred binding to include concepts for reviewer, editor, endorser, informant, and funder. An EvidenceReport Section Code Value Set is provided with extensible binding for the section.code elements.

The <b>ComparativeEvidenceReport Profile</b> is a Profile of <b>EvidenceReport</b> and is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group. A category element instance expresses that the composition is a "Comparative Evidence Report" and additional category element instances may be used.

..A 'Population' section is required with entries limited to reference <b>StudyGroup Profile</b>.

..An 'Intervention' section is required with 2 contained sections. The 'Intervention' section may be repeated. An 'Intervention Description' section is required with entries limited to reference <b>ExposureDefinition Profile</b>. An 'Intervention Group' section is required with entries limited to reference <b>ExposureGroup Profile</b>.

..A 'Comparator' section is required with 2 contained sections. A 'Comparator Description' section is required with entries limited to reference <b>ComparatorDefinition Profile</b> or <b>ExposureDefinition Profile</b>. A 'Comparator Group' section is required with entries limited to reference <b>ComparatorGroup Profile</b> or <b>ExposureGroup Profile</b>.

..A 'Study Design' section is required with entries limited to reference <b>ResearchStudy Resource</b> or <b>Classification Profile</b>.

..A 'Baseline Measures' section is optional. The 'Baseline Measures' section contains one or more sections with each of these sections identified by focus (Composition.section[baseline].section.focus) which references a <b>VariableDefinition Profile</b>. Each of these focused sections contain one or more of the following sections:

....Composition.section[baseline].section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a <b>BaselineMeasureEvidence Profile</b>.

....Composition.section[baseline].section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a <b>BaselineMeasureEvidence Profile</b>.

....Composition.section[baseline].section.section[totalGroup] has a section.code value for 'Evidence with total group' and entries limited to a single reference of a <b>BaselineMeasureEvidence Profile</b>.

....Composition.section[baseline].section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a <b>ComparativeBaselineMeasureEvidence Profile</b>.

..A 'Participant Flow' section is optional. The 'Participant Flow' section contains one or more sections with each of these sections identified by focus (Composition.section[flow].section.focus) which references a <b>ParticipantFlowMeasure Profile</b>. Each of these focused sections contain one or more of the following sections:

....Composition.section[flow].section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a <b>ParticipantFlow Profile</b>.

....Composition.section[flow].section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a <b>ParticipantFlow Profile</b>.

....Composition.section[flow].section.section[totalGroup] has a section.code value for 'Evidence with total group' and entries limited to a single reference of a <b>ParticipantFlow Profile</b>.

....Composition.section[flow].section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a <b>ComparativeParticipantFlow Profile</b>.

..An 'Outcome Measures' section is required. The 'Outcome Measures' section contains one or more sections with each of these sections identified by focus (Composition.section[outcomes].section.focus) which references a <b>VariableDefinition Profile</b>. Each of these focused sections contain one or more of the following sections:

....Composition.section[outcomes].section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a <b>ComparatorOnlyEvidence Profile</b>.

....Composition.section[outcomes].section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a <b>InterventionOnlyEvidence Profile</b>.

....Composition.section[outcomes].section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a <b>ComparativeEvidence Profile</b>.

The <b>Guideline Profile</b> is a Profile of <b>EvidenceReport</b> and is used for the composition of a clinical practice guideline and may be tightly related to use of the <b>Recommendation Profile</b> for related content. A category element instance expresses that the composition is a "Guideline" and additional category element instances may be used.

The <b>Guideline Profile</b> will have 1 to 6 section element instances with any of the following section.code concepts:  Introduction, Recommendations, Text, Methods, Acknowledgements, and Appendices. The Recommendations section will have entries which are constrained to reference the <b>Recommendation Profile</b>. 

The <b>Recommendation Profile</b> is a Profile of <b>EvidenceReport</b> and is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a <b>RecommendationPlan Profile</b> of PlanDefinition and a <b>RecommendationJustification Profile</b> of ArtifactAssessment. A category element instance expresses that the composition is a "Recommendation" and additional category element instances may be used.

The relatesTo element will have 1 or more instances with a type of "derived-from" which may reference <b>RecommendationJustification Profile</b>, <b>PlanDefinition Resource</b>, or <b>Composition Resource</b> where the structured data for the source content of the composition is found.

The <b>Recommendation Profile</b> will have 1 to 5 section element instances with any of the following section.code concepts:  Recommendation Specification, Evidence, Net Effect, Judgments, and Considerations.

..The Recommendation Specification section is required and contains sections with section.code concepts for Recommendation Statement, Rating System, Strength of Recommendation, Direction of Recommendation, Ratings, Related Items, Discussion, Population, Action, Opposite Action, and Data Source.

..The Evidence section contains sections with section.code concepts for Summary of Findings, Desirable Effects, Undesirable Effects, Discussion, and Data Source. The Summary of Findings, Desirable Effects, and Undesirable Effects sections contain sections with section.code concepts for Ratings and Related Items.

..The Net Effect section contains sections with section.code concepts for Summary, Ratings, Related Items, Preferences, Discussion, and Data Source. The Preferences section contains sections with section.code concepts for Ratings and Related Items.

..The Judgments section contains sections with section.code concepts for Justification, Problem Importance, Costs, Cost-effectiveness, Equity, Acceptability, and Feasibility.  Each of these sections contain sections with section.code concepts for Ratings and Related Items.

..The Considerations section contains sections with section.code concepts for Summary, Ratings, Related Items, Subgroup Considerations, Implementation Considerations, Monitoring Considerations, Competing Interests, and Research Considerations. The Subgroup Considerations, Implementation Considerations, Monitoring Considerations, Competing Interests, and Research Considerations sections contain sections with section.code concepts for Ratings and Related Items.

### Dependencies

{% include dependency-table-short.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP Statements

{% include ip-statements.xhtml %}