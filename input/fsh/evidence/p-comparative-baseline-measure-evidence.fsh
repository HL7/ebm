Profile: ComparativeBaselineMeasureEvidence
Parent: ComparativeEvidence
Id: comparative-baseline-measure-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The ComparativeBaselineMeasureEvidence Profile is used for comparative evidence with a measured variable (with the role of outcome for this Evidence) that is considered an independent variable with respect to the outcome of an exposure or intervention in a study." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* variableDefinition
  * ^comment = "The Baseline Measure (or independent variable) has variableRole of outcome."

