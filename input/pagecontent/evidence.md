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

