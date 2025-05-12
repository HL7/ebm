## EBMonFHIR Implementation Guide

Welcome to the EBMonFHIR Implementation Guide!

The FHIR Resources for Evidence Based Medicine Knowledge Assets ('EBMonFHIR') Implementation Guide defines profiles and value sets for the representation of scientific knowledge. This implementation guide is intended for developers of systems using FHIR for data exchange of scientific knowledge and for authors of more specialized implementation guides in this domain.

This implementation guide covers the broad scope of representation of scientific knowledge, including (1) citations to represent identification, location, classification, and attribution for knowledge artifacts; (2) components of research study design including study eligibility criteria (cohort definitions) and endpoint analysis plans; (3) research results including the statistic findings, definition of variables for which those findings apply, and the certainty of these findings; (4) assessments of research results; (5) aggregation and synthesis of research results; (6) judgments regarding evidence syntheses and contextual factors related to recommendations; (7) recommendations; and (8) compositions of combinations of these types of knowledge. The types of interoperability covered include syntactic (Resource StructureDefinitions) and semantic (value sets).

## To Learn About FHIR

This implementation guide is based on the Continuous Integration Build of the HL7 [FHIR](https://build.fhir.org/index.html) standard. It uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to review the following R5-based links prior to reading the rest of this implementation guide. For changes that are in development for the next version of FHIR (R6), use the Continuous Integration Build of [FHIR](https://build.fhir.org/index.html) to find related content.

[FHIR overview](http://hl7.org/fhir/R5/overview.html)

[Developer's introduction](http://hl7.org/fhir/R5/overview-dev.html)

(or [Clinical introduction](http://hl7.org/fhir/R5/overview-clinical.html))

[FHIR data types](http://hl7.org/fhir/R5/datatypes.html)

[Using codes](http://hl7.org/fhir/R5/terminologies.html)

[References between resources](http://hl7.org/fhir/R5/references.html)

[How to read resource & profile definitions](http://hl7.org/fhir/R5/formats.html)

[Base resource](http://hl7.org/fhir/R5/resource.html)

[FHIR Validation](http://hl7.org/fhir/R5/validation.html)

## Resources Used in the EBMonFHIR IG

### Evidence Resource

The <b>Evidence Resource</b> is the central atomic component for the Evidence-related Resources. The <b>Evidence Resource</b> provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures, outcomes, covariates), the statistics (the quantitative results of a study or statistical analysis), and the certainty of this evidence.

Profiles of <b>Evidence Resource</b> include:

- <b>SingleStudyEvidence</b>
- <b>EvidenceSynthesisEvidence</b>
- <b>NonComparativeEvidence</b> -- Profiles of <b>NonComparativeEvidence</b> include:
  - <b>ComparatorOnlyEvidence</b>
  - <b>InterventionOnlyEvidence</b>
  - <b>BaselineMeasureEvidence</b>
  - <b>ParticipantFlowEvidence</b>
- <b>ComparativeEvidence</b> -- Profiles of <b>ComparativeEvidence</b> include:
  - <b>ComparativeBaselineMeasureEvidence</b>
  - <b>ComparativeParticipantFlowEvidence</b>
  - <b>NetEffectContribution</b>
- <b>StatisticModel</b> -- A Profile of <b>StatisticModel</b> is:
  - <b>EndpointAnalysisPlan</b>
- <b>NetEffectEstimate</b> 

### EvidenceVariable Resource

The <b>EvidenceVariable Resource</b> describes a single variable used in a statistical analysis.

Profiles of <b>EvidenceVariable Resource</b> include:
- <b>VariableDefinition</b> is a base for all other EvidenceVariable Profiles. Profiles of <b>VariableDefinition</b> include:
  - <b>GroupAssignment</b>
  - <b>ParticipantFlowEvidenceVariable</b>
  - <b>DichotomousIntendedOutcome</b>

### Group Resource

The <b>Group Resource</b> represents a defined collection of entities. The group may be enumerated, meaning that there is a known quantity of group members with or without a listing of the group members. The group may be definitional, meaning there is a structured representation of the characteristics (criteria) that define membership eligiblity, or who or what matches the criteria to be considered a member of the group.

Profiles of <b>Group Resource</b> include:
- <b>GroupR6</b> is a base for all other Group Profiles. Profiles of <b>GroupR6</b> include:
  - <b>StudyGroup</b>
  - <b>ExposureGroup</b>
  - <b>ComparatorGroup</b>
  - <b>MetaanalysisStudyGroup</b>
  - <b>NetEffectContributions</b>
  - <b>CohortDefinition</b> -- Profiles of <b>CohortDefinition</b> include:
    - Profiles of <b>CohortDefinition</b> used for the inclusion and exclusion criteria of specific definitional groups include <b>StudyEligibilityCriteria</b> (for a research study) and <b>RecommendationEligibilityCriteria</b> (for a clinical practice guideline recommendation). These Profiles are not currently structurally different than <b>CohortDefinition</b> but are separated for future development in case of specialized developments for eligibility criteria.
  - <b>ConceptualCohortDefinition</b> -- Profiles of <b>ConceptualCohortDefinition</b> include:
    - Profiles of <b>ConceptualCohortDefinition</b> used for the inclusion and exclusion criteria of specific conceptual groups include <b>SystematicReviewEligibilityCriteria</b> (for a systematic review) and <b>MetaanalysisEligibilityCriteria</b> (for a statistical meta-analysis). These Profiles are not currently structurally different than <b>ConceptualCohortDefinition</b> but are separated for future development in case of specialized developments for eligibility criteria.
    - <b>ConceptualExposureDefinition</b>, <b>ConceptualComparatorDefinition</b>, <b>OutcomeDefinition</b>, and <b>MetaanalysisOutcomeDefinition</b> are Profiles of <b>ConceptualCohortDefinition</b> used for the definition of evidence variables. These Profiles are not currently structurally different than <b>ConceptualCohortDefinition</b> but are separated for future development in case of specialized developments for variable definitions.
    - <b>SearchStrategy</b> (for a literature search)
    - <b>EvidenceReportSubject</b> is used to define the subject of an <b>EvidenceReport</b>. A Profile of <b>EvidenceReportSubject</b> is:
      - <b>ComparativeEvidenceReportSubject</b>

### Citation Resource

The <b>Citation Resource</b> enables reference to any knowledge artifact for purposes of identification and attribution. The <b>Citation Resource</b> supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.

Profiles of <b>Citation Resource</b> include:
- <b>JournalArticleCitation</b>
- <b>BookCitation</b>
- <b>BookPartCitation</b>
- <b>DatabaseCitation</b>
- <b>DatabaseEntryCitation</b>
- <b>DatasetCitation</b>
- <b>PreprintCitation</b>
- <b>SoftwareCitation</b>
- <b>WebPageCitation</b>

### ArtifactAssessment Resource

The <b>ArtifactAssessment Resource</b> provides one or more comments, classifiers or ratings about a Resource and supports attribution and rights management metadata for the added content.

Profiles of <b>ArtifactAssessment Resource</b> include:
- <b>Comment</b>
- <b>Classification</b>
  - <b>DateAsRating Profile</b> is a Profile of <b>Classification</b>
- <b>Rating</b>
- <b>CertaintyOfEvidence</b>
- <b>RiskOfBias</b>
- <b>RecommendationJustification</b>
- <b>OutcomeImportance</b>
- <b>CompositeRating</b>
- <b>Adaptation</b>
  - <b>Comparison Profile</b> is a Profile of <b>Adaptation</b>

### Composition Resource

The <b>Composition Resource</b> is a structure for grouping information for purposes of persistence and attestability. The <b>Composition Resource</b> provides the basic structure for a FHIR document. The full content of the document is expressed using a <b>Bundle Resource</b> containing the Composition and its entries (which are references to other FHIR Resources).

Profiles of <b>Composition Resource</b> include:
- <b>EvidenceReport</b> is used for a base structure (canonical resource management) for a report combining any number of <b>Citation</b>, <b>Evidence</b>, <b>EvidenceVariable</b>, <b>EvidenceReport</b>, and related Resources. Profiles of <b>EvidenceReport</b> include:
  - <b>ResearchStudyDataDictionary</b> is used for a code key for variable names in a dataset containing the observations collected in a research study.
  - <b>M11Report</b> is used for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification.
  - <b>EvidenceReportPackage</b> is used for a base structure to extend the <b>EvidenceReport Profile</b> with optional sections for Summary, Introduction, Discussion, Methods, References, Competing Interests, Acknowledgements, and Appendices. Profiles of <b>EvidenceReportPackage</b> include:
    - <b>ComparativeEvidenceReport</b> is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group.
    - <b>ComparativeEvidenceSynthesisReport</b> is used for an evidence report including the intended population, intended exposure, intended comparator, and findings for any number of outcomes comparing the exposure to the comparator with observed study group, observed exposure group, and observed comparator group unique for each outcome.
    - <b>Guideline</b> is used for the composition of a clinical practice guideline and may be tightly related to use of the <b>Recommendation Profile</b> for related content. 
    - <b>Recommendation</b> is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a <b>RecommendationPlan Profile</b> of PlanDefinition and a <b>RecommendationJustification Profile</b> of ArtifactAssessment. 
    - <b>SummaryOfNetEffect</b> is used for an evidence report combining <b>ArtifactAssessment</b>, <b>Evidence</b>, and <b>EvidenceVariable Resources</b>, organized around <b>VariableDefinition</b> (Profile of EvidenceVariable), to represent the summary of net effect contributions of comparative evidence, adjusted for the relative importance of outcomes. 
  - <b>EvidenceTableReportPackage</b> is used for a base structure to extend the <b>EvidenceReport Profile</b> with Results sections where each results section instance has a focus on a measured variable and a reproducible structure to represent evidence about that measured variable for different groups. Profiles of <b>EvidenceTableReportPackage</b> include:
    - <b>BaselineMeasureReport</b> is used for an evidence report including the findings for any number of baseline measures in a research study.
    - <b>ParticipantFlowReport</b> is used for an evidence report including the counts (and proportions) for any number of participant flow measures in a research study.
    - <b>OutcomeMeasureReport</b> is used for an evidence report including the findings for any number of outcome measures in a research study.
    - <b>SummaryOfFindings</b> is used for an evidence report combining <b>Evidence</b> and <b>EvidenceVariable Resources</b>, organized around <b>VariableDefinition</b> (Profile of EvidenceVariable), to represent the summary of findings of comparative evidence. 

### Other Resources

Other Resources and <b>Other Profiles</b> used in the EBMonFHIR Implementation Guide include:
- <b>ResearchStudy Resource</b>
  - <b>StudyRegistryRecord</b> used for a scientific study record in a research study registry, such as ClinicalTrials.gov or the European Union Clinical Trial Information System (EU CTIS)."
  - <b>M11ResearchStudy</b> used to add extensions for use with an M11 Report.
  - <b>SystematicReview</b> used for a research study that involves investigation of research studies.
- <b>ActivityDefinition Resource</b> including a Profile of:
  - <b>RecommendationAction</b> used for a recommendation from a clinical practice guideline.
- <b>PlanDefinition Resource</b> including Profiles of:
  - <b>RecommendationPlan</b> used for the implementable representation of a recommendation (such as that from a clinical practice guideline). <b>RecommendationPlan</b> is developed to match the CPGonFHIR related Implementation Guidance.
  - <b>SoaPlanDefinition</b> used for the representation of a schedule of activities that is often includes with a research study protocol. <b>SoaPlanDefinition</b> is in development related to efforts to support the <b>M11Report Profile</b>.
- <b>Library Resource</b> including Profiles of:
  - <b>SearchResults</b> used to represent search results, such as for a systematic review. The subjectReference element is limited to reference a <b>SearchStrategy Profile</b>.
  - <b>SystematicReviewIncludedStudies</b> used to represent the subset of search results of a systematic review which meet the inclusion criteria. The subjectReference element is limited to reference a <b>SystematicReviewEligibilityCriteria Profile</b>.
  - <b>SystematicReviewExcludedStudies</b> used to represent the subset of search results of a systematic review which did not meet the inclusion criteria. The subjectReference element is limited to reference a <b>SystematicReviewEligibilityCriteria Profile</b>.
- <b>List Resource</b> including Profiles of:
  - <b>BaselineVariablesList</b> is used to provide a list of <b>EvidenceVariable Resources</b> which represent baseline measures.
  - <b>EvidenceList</b> is used to provide a list of <b>Evidence Resources</b>. <b>EvidenceList</b> is used to represent a group of evidence for the population for an <b>EvidenceSynthesisEvidence</b> using a summary data meta-analysis approach and is referenced from a <b>MetaanalysisStudyGroup</b>. The entry element is repeatable and limited to reference an <b>Evidence Resource</b>.
  - <b>NetEffectContributionList</b> used provide a list of Evidence Resources (<b>NetEffectContribution Profile</b>). <b>NetEffectContributionList</b> is used to represent a group of evidence for the population for a <b>NetEffectEstimate</b> (Profile of Evidence) using a net effect analysis approach and is referenced from a <b>NetEffectContributions</b> (Profile of Group). The entry element is repeatable and limited to reference a <b>NetEffectContribution Resource</b>.
  - <b>OutcomeList</b> used provide a list of outcomes. <b>OutcomeList</b> is referenced in the <b>EvidenceReportSubject Profile</b> as a way to define the set of outcomes that an <b>EvidenceReport</b> is about. The entry element is repeatable and limited to reference an <b>OutcomeDefinition Profile</b> or a <b>VariableDefinition Profile</b>.
  - <b>OutcomeVariablesList</b> is used to provide a list of <b>EvidenceVariable Resources</b> which represent outcome measures.
  - <b>ParticipantFlowVariablesList</b> is used to provide a list of <b>EvidenceVariable Resources</b> which represent participant flow measures.

## Changes from first ballot

The Implementation Guide has changed substantially by using a FHIR R6 base instead of a FHIR R5 base. 

In addition, new Profiles include BaselineMeasureReport, BaselineVariablesList, ComparativeEvidenceSynthesisReport, ConceptualCohortDefinition, ConceptualComparatorDefinition, ConceptualExposureDefinition, DichotomousIntendedOutcome, EvidenceReportPackage, EvidenceTableReportPackage, M11ResearchStudy, OutcomeMeasureReport, OutcomeVariablesList, ParticipantFlowReport, ParticipantFlowVariablesList, ResearchStudyDataDictionary, SystematicReview, and VariablesList. Removed Profiles include DataDictionary, EvidenceMap, and EvidenceR6. Some Profiles were renamed, such as ParticipantFlowMeasure was renamed ParticipantFlowEvidenceVariable. 

New Extensions include AdditionalLanguage, CiteAs, EvidenceVariableCLassifier, EvidenceVariableConditional, EvidenceVariableConstraint, EvidenceVariableDataCleaning, EvidenceVariableDataStorage, EvidenceVariableDefinitionModifier, EvidenceVariableHandlingDetail, EvidenceVariableMissingData, EvidenceVariablePeriod, RelatesToWithQuotation, RelatesTo, RelativeOutcomeImportance, ResearchStudyComparisonGroupEligibility, ResearchStudyExcludedStudy, ResearchStudyIncludedStudy, ResearchStudyNumberOfStudiesIdentified, ResearchStudyNumberOfStudiesIncluded, ResearchStudyOutcomeMeasure, ResearchStudyResultAsComposition, ResearchStudySaeReportingMethod, ResearchStudySearchStrategy, ResearchStudySponsorConfidentialityStatement, ResearchStudyStudyAmendment, ResearchStudySystematicReviewEligibilityCriteria, TargetAttachment, TargetCanonical, TargetMarkdown, TargetReference, and TargetUri. Many of these extensions are temporary and provided to support elements that will be available in the latest R6 build version of FHIR but are not available for the IG builder.

## Acknowledgements

This Implementation Guide was made possible by the thoughtful contributions of many, including but not limited to the following people and organizations:

- Brian S. Alper, MD, MSPH, FAAFP, FAMIA, FGIN, Computable Publishing LLC (US) - Editor
- Khalid Shahin, Computable Publishing LLC (US) - Committer
- Joanne Dehnbostel, MS, MPH, Computable Publishing LLC (US)
- Health Evidence Knowledge Accelerator (HEvKA)
- Scientific Knowledge Accelerator Foundation
- Clinical Decision Support (CDS) Work Group
- Clinical Quality Information (CQI) Work Group
- Biomedical Research and Regulation (BRR) Work Group
- Structured Documents (SD) Work Group
- Guidelines International Network Technology Working Group (GINTech)
- Muhammad Afzal, PhD, FHEA, Birmingham City University (England)
- Rachel Couban, McMaster University (Canada)
- Christopher M. Enright, Computable Publishing LLC (US)
- Sophie Klopfenstein, MD, Berlin Institute of Health at Charité – Universitätsmedizin Berlin (Germany)
- Bhagvan Kommadi, MS, Capri Global Capital Ltd. (India)
- Ilkka Kunnamo, MD, PhD, Duodecim Publishing Company (Finland)
- Harold Lehmann, MD, PhD, Johns Hopkins University (US)
- Gregor Lichtner, PhD, Universitätsmedizin Greifswald (Germany)
- Matthias Löbe, IMISE, Universität Leipzig (Germany)
- Bryn Rhodes, Smile Digital Health (US)
- Karen A. Robinson, PhD, Johns Hopkins University (US)
- Mario Tristan, IHCAI Institute (Costa Rica)
- Janice Tufte, Hassanah Consulting (US)
- Yunwei Wang, MITRE (US)
- Kenneth J. Wilkins, PhD, National Institutes of Health, National Institute of Diabetes & Digestive & Kidney Diseases (NIH/NIDDK) (US)

## Dependencies and Statements

### Dependencies

{% include dependency-table-short.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP Statements

{% include ip-statements.xhtml %}