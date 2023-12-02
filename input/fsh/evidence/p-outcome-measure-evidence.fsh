Profile: OutcomeMeasureEvidence
Parent: EvidenceR6
Id: outcome-measure-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The OutcomeMeasureEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention." 
* variableDefinition 2..*
  * ^comment = "The Outcome has variableRole of outcome."
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "extension[0].valueCode"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..* MS and outcome 1..* MS
* variableDefinition[population]
  * extension[VariableDefinitionVariableRoleCode].valueCode = #population
  * observed only Reference(StudyGroup or ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
* variableDefinition[outcome]
  * extension[VariableDefinitionVariableRoleCode].valueCode = #outcome
  * observed only Reference(ExposureVariable or OutcomeVariable)
