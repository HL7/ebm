### Profiles of ResearchStudy Resource

The **[ResearchStudySite Profile][ResearchStudySite]** is a Profile of <b>ResearchStudy Resource</b> and is used to express site-specific data for a research study.

The **[StudyRegistryRecord Profile][StudyRegistryRecord]** is a Profile of <b>ResearchStudy Resource</b> and is used for a scientific study record in a research study registry, such as ClinicalTrials.gov or the European Union Clinical Trial Information System (EU CTIS).

The **[StudyDesign Profile][StudyDesign]** is a Profile of <b>ResearchStudy Resource</b> and is used to add extensions for additional expressions of study design features with the study protocol.

The **[StudyComponent Profile][StudyComponent]** is a Profile of <b>StudyDesign</b> and is used to report a part of a study that is conducted in multiple parts.

The **[SystematicReview Profile][SystematicReview]** is a Profile of <b>ResearchStudy Resource</b> and is used for a scientific study based on a protocol that includes search and selection of eligible studies, study quality assessment, data extraction, and synthesis.

Extensions are provided for searchStrategy, systematicReviewEligibilityCriteria, numberOfStudiesIdentified, numberOfStudiesIncluded, includedStudy, excludedStudy, and resultAsComposition.

### RecommendationAction Profile of ActivityDefinition Resource

The **[RecommendationAction Profile][RecommendationAction]** is a Profile of <b>ActivityDefinition Resource</b> and is used for a recommendation from a clinical practice guideline.

A CharacteristicTiming extension named timingRelativeTime provides support for the RelativeTime datatype in FHIR version R6 to be used in FHIR version R5.

### RecommendationPlan Profile of PlanDefinition Resource

The **[RecommendationPlan Profile][RecommendationPlan]** is a Profile of <b>PlanDefinition Resource</b> and is used for the implementable representation of a recommendation (such as that from a clinical practice guideline). The **[RecommendationPlan Profile][RecommendationPlan]** is developed to match the CPGonFHIR related Implementation Guidance.

A CharacteristicTiming extension named timingRelativeTime is available for the PlanDefinition.action element to provide support for the RelativeTime datatype in FHIR version R6 to be used in FHIR version R5.

### SoaPlanDefinition Profile of PlanDefinition Resource

The **[SoaPlanDefinition Profile][SoaPlanDefinition]** is a Profile of <b>PlanDefinition Resource</b> and is used for the representation of a schedule of activities that is often includes with a research study protocol. The **[SoaPlanDefinition Profile][SoaPlanDefinition]** is in development related to efforts to support the **[M11Report Profile][M11Report]**.

A CharacteristicTiming extension named timingRelativeTime is available for the PlanDefinition.action element to provide support for the RelativeTime datatype in FHIR version R6 to be used in FHIR version R5.

### Profiles of Library Resource

The **[SearchResults Profile][SearchResults]** is used to represent search results, such as for a systematic review. The subjectReference element is limited to reference a **[SearchStrategy Profile][SearchStrategy]**.

The **[SystematicReviewIncludedStudies Profile][SystematicReviewIncludedStudies]** is used to represent the subset of search results of a systematic review which meet the inclusion criteria. The subjectReference element is limited to reference a **[SystematicReviewEligibilityCriteria Profile][SystematicReviewEligibilityCriteria]**.

The **[SystematicReviewExcludedStudies Profile][SystematicReviewExcludedStudies]** is used to represent the subset of search results of a systematic review which did not meet the inclusion criteria. The subjectReference element is limited to reference a **[SystematicReviewEligibilityCriteria Profile][SystematicReviewEligibilityCriteria]**.

### Profiles of List Resource

The **[BaselineVariablesList Profile][BaselineVariablesList]** is used to provide a list of EvidenceVariable Resources which represent baseline measures. The **[BaselineVariablesList Profile][BaselineVariablesList]** is referenced in the **[ComparativeEvidenceReport Profile][ComparativeEvidenceReport]** as a way to define the set of outcomes that is reported in a **[BaselineMeasureReport][BaselineMeasureReport]**. The entry element is repeatable and limited to reference a **[VariableDefinition Profile][VariableDefinition]**.

The **[EvidenceList Profile][EvidenceList]** is used to provide a list of <b>Evidence Resources</b>. The **[EvidenceList Profile][EvidenceList]** is used to represent a group of evidence for the population for an **[EvidenceSynthesisEvidence][EvidenceSynthesisEvidence]** using a summary data meta-analysis approach and is referenced from a **[MetaanalysisStudyGroup][MetaanalysisStudyGroup]**. The entry element is repeatable and limited to reference an <b>Evidence Resource</b>.

The **[NetEffectContributionList Profile][NetEffectContributionList]** is used to provide a list of Evidence Resources (**[NetEffectContribution Profile][NetEffectContribution]**). The **[NetEffectContributionList Profile][NetEffectContributionList]** is used to represent a group of evidence for the population for a **[NetEffectEstimate][NetEffectEstimate]** (Profile of Evidence) using a net effect analysis approach and is referenced from a **[NetEffectContributions][NetEffectContributions]** (Profile of Group). The entry element is repeatable and limited to reference a <b>NetEffectContribution Resource</b>.

The **[OutcomeList Profile][OutcomeList]** is used to provide a list of outcomes. The **[OutcomeList Profile][OutcomeList]** is referenced in the **[EvidenceReportSubject Profile][EvidenceReportSubject]** as a way to define the set of outcomes that an **[EvidenceReport][EvidenceReport]** is about. The entry element is repeatable and limited to reference an **[OutcomeDefinition Profile][OutcomeDefinition]** or a **[VariableDefinition Profile][VariableDefinition]**.

The **[OutcomeVariablesList Profile][OutcomeVariablesList]** is used to provide a list of EvidenceVariable Resources which represent outcome measures. The **[OutcomeVariablesList Profile][OutcomeVariablesList]** is referenced in the **[ComparativeEvidenceReport Profile][ComparativeEvidenceReport]** as a way to define the set of outcomes that is reported in an **[OutcomeMeasureReport][OutcomeMeasureReport]** or a **[SummaryOfFindings][SummaryOfFindings]**. The entry element is repeatable and limited to reference a **[VariableDefinition Profile][VariableDefinition]**.

The **[ParticipantFlowVariablesList Profile][ParticipantFlowVariablesList]** is used to provide a list of EvidenceVariable Resources which represent participant flow measures. The **[ParticipantFlowVariablesList Profile][ParticipantFlowVariablesList]** is referenced in the **[ComparativeEvidenceReport Profile][ComparativeEvidenceReport]** as a way to define the set of outcomes that is reported in a **[ParticipantFlowReport][ParticipantFlowReport]**. The entry element is repeatable and limited to reference a **[ParticipantFlowEvidenceVariable Profile][ParticipantFlowEvidenceVariable]**.

{% include link-list.md %}