Profile: BaselineMeasureEvidence
Parent: NonComparativeEvidence
Id: baseline-measure-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The BaselineMeasureEvidence Profile is used for evidence with a measured variable (with the role of outcome for this Evidence) that is considered an independent variable with respect to the outcome of an exposure or intervention in a study." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* variableDefinition
  * ^comment = "The Baseline Measure (or independent variable) has variableRole of outcome."
  * intended 0..0
  * directnessMatch 0..0
