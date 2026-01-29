## Changes from first ballot

The Implementation Guide has changed substantially by using a FHIR R6 base instead of a FHIR R5 base. 

In addition, new Profiles include BaselineMeasureReport, BaselineVariablesList, ComparativeEvidenceSynthesisReport, ConceptualCohortDefinition, ConceptualComparatorDefinition, ConceptualExposureDefinition, DichotomousIntendedOutcome, EvidenceReportPackage, EvidenceTableReportPackage, M11ResearchStudy, OutcomeMeasureReport, OutcomeVariablesList, ParticipantFlowReport, ParticipantFlowVariablesList, ResearchStudyDataDictionary, SystematicReview, and VariablesList. Removed Profiles include DataDictionary, EvidenceMap, and EvidenceR6. Some Profiles were renamed, such as ParticipantFlowMeasure was renamed ParticipantFlowEvidenceVariable. 

New Extensions include AdditionalLanguage, CiteAs, EvidenceVariableCLassifier, EvidenceVariableConditional, EvidenceVariableConstraint, EvidenceVariableDataCleaning, EvidenceVariableDataStorage, EvidenceVariableDefinitionModifier, EvidenceVariableHandlingDetail, EvidenceVariableMissingData, EvidenceVariablePeriod, RelatesToWithQuotation,  RelativeOutcomeImportance, ResearchStudyComparisonGroupEligibility, ResearchStudyExcludedStudy, ResearchStudyIncludedStudy, ResearchStudyNumberOfStudiesIdentified, ResearchStudyNumberOfStudiesIncluded, ResearchStudyOutcomeMeasure, ResearchStudyResultAsComposition, ResearchStudySaeReportingMethod, ResearchStudySearchStrategy, ResearchStudySponsorConfidentialityStatement, ResearchStudyStudyAmendment, ResearchStudySystematicReviewEligibilityCriteria, TargetAttachment, TargetCanonical, TargetMarkdown, TargetReference, and TargetUri. Many of these extensions are temporary and provided to support elements that will be available in the latest R6 build version of FHIR but are not available for the IG builder.

## Changes from second ballot

### Changes to Profiles of ArtifactAssessment

The EvidenceAssessment Profile was added to include a content slice for the rating system. The CertaintyOfEvidence and RiskOfBias Profiles were changed to use EvidenceAssessment as the base. 

The RecommendationRating Profile was added using a base of EvidenceAssessment. The RecommendationJustification Profile was modified to use a base of RecommendationRating.

The OutcomeImportance Profile was modified to have 4 slices for content. The ArtifactAssessment.content may be used for
- Outcome Desirability (with a classifier of Desirable or Undesirable), 
- Relative Importance (in which case the ArtifactAssessment.content.quantity.value element is described with "The value must be 0 (no importance) or a positive decimal. The value of 100 represents the importance of the reference outcome. A value greater than 100 represents exceptionally high importance that is higher than the importance of the reference outcome." and the ArtifactAssessment.content.quantity.unit element is set to "%"), 
- ForWhom (in which case the ArtifactAssessment.content.relatesTo.targetReference may reference the group or person that this OutcomeImportance supports), or 
- Justification (in which case the classifier and/or relatesTo elements may be used to report the evidence or rationale for the relative importance rating).

### Changes to Profiles of Composition

The EvidenceReport Profile added a similarTo slice to Composition.relatesTo; and added extendedContactDetail, publicationDate, and relatesToClassifier extensions from the Extensions Pack.

The EvidenceReportPackage Profile added an Attachments slice to Composition.section with Reference options limited to DocumentReference.

The EvidenceTableReportPackage Profile was removed and the ParticipantFlowReport, BaselineMeasureReport, and OutcomeMeasureReport Profiles were simplified and based on EvidenceReport.

The ComparativeEvidenceReport and ComparativeEvidenceSynthesisReport Profiles can reference PlanDefinition or ActivityDefinition in addition to CohortDefinition or ConceptualCohortDefinition in sections describing interventions and exposures.

The ComparativeEvidenceReport Profile was modified to include a 'Study Sample' section instead of a 'Population' section and simplify its suggested contained sections to an "Eligibility Criteria' section, simplify the 'Intervention' and 'Comparator' sections to become 'Intervention Group' and 'Compartor Group' sections, remove the 'Baseline Measures' and 'Participant Flow' sections, and separate the 'Outcome Measures' section into an 'Outcome Measures' section and an 'Outcome Findings' section.

A ComparativeEvidenceReportExpanded Profile was added to use ComparativeEvidenceReport as a base and add sections for 'Screened Group', 'Excluded Group', 'Baseline Measures', 'Participant Flow Measures', 'Baseline Characteristics', and 'Participant Flow'.

The Recommendation Profile was simplified to remove the Summary and Recommendation Specification sections.

The SummaryOfNetEffect Profile was modified to include a SummaryOfFindings section slice which contains outcomeEntry section slices for each outcome, similar to the SummaryOfFindings Profile.

### Changes to Profiles of Evidence

The NetEffectEstimate Profile was modified to represent the 'Group of Evidence' (NetEffectContributions Profile of Group) as an outcome instead of a population in the variableDefintion, to allow multiple confidence intervals, and to add an attribute estimate for the 'number needed to treat'.

### Changes to Profiles of EvidenceVariable

DichotomousIntendedOutcome and ParticipantFlowEvidenceVariable Profiles of EvidenceVariable set the handling element value to 'boolean' instead of 'dichotomous'.

The ParticipantFlowReasonEvidenceVariable Profile was added.

### Changes to Profiles of ResearchStudy

The M11ResearchStudy Profile was renamed StudyDesign Profile to improve coordination with the Vulcan UDP IG (Pharmaceutical Research Protocol IG).

The CTISRecord Profile was renamed StudyRegistryRecord Profile. The StudyRegistrationRecord Profile was revised to use the ResearchStudyIsLowInterventionTrial Extension, to use the translation extension in condition.text, and to use the ResearchStudyIsRareDisease Extension in ResearchStudy.condition

The ResearchStudySite Profile was added to express site-specific data for a research study.

The StudyComponent Profile was added to report a part of a study that is conducted in multiple parts.

### Changes to Profiles of other Resources

The AbsenceOfExposureDefinition Profile of Group was added.

The ResearchStudySupport Profile of DocumentReference was added.

### Changes for Citation Resource

---Citation Resource will be moved to an EBM-Incubator Implementation Guide---

### Changes to Terminologies

The following terminologies were moved from an external draft code system to be defined in EBMonFHIR IG based artifacts:  EBMonFHIRProfileNameCodeSystem and SearchStrategyCharacteristicCodeSystem.

The EvidenceReportContributorRole Value Set was removed as the EvidenceReport Profile can now directly use the Contributor Role Value Set from THO.

New terminologies (CodeSystem and ValueSet pairs) were created for EvidenceRatingSystemClassifier, ResearchStudyDocumentTypes, and ResearchStudyClassifier.

### Changes to Extensions

Adjustments were made to match the current (build) version of FHIR R6 as needed by adding or removing extensions upon FHIR version 6.0.0-ballot3.

Extensions added include ArtifactPublicationStatus, ArtifactRecorder, GuidelineRegistration, RelatesToClassifier, ResearchStudyIsLowInterventionTrial, and ResearchStudyIsRareDisease. 

Extensions removed (in favor of use of the FHIR Extensions Pack) include AdditionalLanguage.

