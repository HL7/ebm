### DataDictionary Profile of CodeSystem Resource

The <b>DataDictionary Profile</b> is a Profile of <b>CodeSystem Resource</b> and is used for a code key for variable names in a dataset.

A url is required to provide accessibility for the data dictionary.

### RecommendationAction Profile of ActivityDefinition Resource

The <b>RecommendationAction Profile</b> is a Profile of <b>ActivityDefinition Resource</b> and is used for a recommendation from a clinical practice guideline.

A CharacteristicTiming extension named timingRelativeTime provides support for the RelativeTime datatype in FHIR version R6 to be used in FHIR version R5.

### RecommendationPlan Profile of PlanDefinition Resource

The <b>RecommendationPlan Profile</b> is a Profile of <b>PlanDefinition Resource</b> and is used for the implementable representation of a recommendation (such as that from a clinical practice guideline). The <b>RecommendationPlan Profile</b> is developed to match the CPGonFHIR related Implementation Guidance.

A CharacteristicTiming extension named timingRelativeTime is available for the PlanDefinition.action element to provide support for the RelativeTime datatype in FHIR version R6 to be used in FHIR version R5.

### SoaPlanDefinition Profile of PlanDefinition Resource

The <b>SoaPlanDefinition Profile</b> is a Profile of <b>PlanDefinition Resource</b> and is used for the representation of a schedule of activities that is often includes with a research study protocol. The <b>SoaPlanDefinition Profile</b> is in development related to efforts to support the <b>M11Report Profile</b>.

A CharacteristicTiming extension named timingRelativeTime is available for the PlanDefinition.action element to provide support for the RelativeTime datatype in FHIR version R6 to be used in FHIR version R5.

### Profiles of Library Resource

The <b>SearchResults Profile</b> is used to represent search results, such as for a systematic review. The subjectReference element is limited to reference a <b>SearchStrategy Profile</b>.

The <b>SystematicReviewIncludedStudies Profile</b> is used to represent the subset of search results of a systematic review which meet the inclusion criteria. The subjectReference element is limited to reference a <b>SystematicReviewEligibilityCriteria Profile</b>.

The <b>SystematicReviewExcludedStudies Profile</b> is used to represent the subset of search results of a systematic review which did not meet the inclusion criteria. The subjectReference element is limited to reference a <b>SystematicReviewEligibilityCriteria Profile</b>.

### Profiles of List Resource

The <b>EvidenceList Profile</b> is used provide a list of <b>Evidence Resources</b>. The <b>EvidenceList Profile</b> is used to represent a group of evidence for the population for an <b>EvidenceSynthesisEvidence</b> using a summary data meta-analysis approach and is referenced from a <b>MetaanalysisStudyGroup</b>. The entry element is repeatable and limited to reference an <b>Evidence Resource</b>.

The <b>NetEffectContributionList Profile</b> is used provide a list of Evidence Resources (<b>NetEffectContribution Profile</b>). The <b>NetEffectContributionList Profile</b> is used to represent a group of evidence for the population for a <b>NetEffectEstimate</b> (Profile of Evidence) using a net effect analysis approach and is referenced from a <b>NetEffectContributions</b> (Profile of Group). The entry element is repeatable and limited to reference a <b>NetEffectContribution Resource</b>.

The <b>OutcomeList Profile</b> is used provide a list of outcomes. The <b>OutcomeList Profile</b> is referenced in the <b>EvidenceReportSubject Profile</b> as a way to define the set of outcomes that an <b>EvidenceReport</b> is about. The entry element is repeatable and limited to reference an <b>OutcomeDefinition Profile</b> or a <b>VariableDefinition Profile</b>.
