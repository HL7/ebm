Profile: NonComparativeEvidence
Parent: EvidenceR6
Id: non-comparative-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The NonComparativeEvidence Profile is used for evidence about a single group with no comparisons between groups." 
* variableDefinition 2..*
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "extension[url : variableRoleCode].valueCode"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..* MS and outcome 1..* MS
* variableDefinition[population]
  * extension[VariableDefinitionVariableRoleCode].valueCode = #population
  * observed only Reference(StudyGroup or ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
  * intended only Reference(Group)
* variableDefinition[outcome]
  * extension[VariableDefinitionVariableRoleCode].valueCode = #outcome
  * observed only Reference(OutcomeVariable or ExposureVariable or ParticipantFlowMeasure)
  * intended only Reference(EvidenceVariable)
