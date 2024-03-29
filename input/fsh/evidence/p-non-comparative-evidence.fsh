Profile: NonComparativeEvidence
Parent: EvidenceR6
Id: non-comparative-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The NonComparativeEvidence Profile is used for evidence about a single group with no comparisons between groups." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* variableDefinition 2..*
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "note.text"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..* MS and outcome 1..* MS
* variableDefinition[population]
  * extension[VariableDefinitionVariableRoleCode].valueCode = #population
  * note.text = "population"
  * observed only Reference(StudyGroup or ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
  * intended only Reference(Group)
* variableDefinition[outcome]
  * extension[VariableDefinitionVariableRoleCode].valueCode = #outcome
  * note.text = "outcome"
  * observed only Reference(VariableDefinition)
  * intended only Reference(EvidenceVariable)
