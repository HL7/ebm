Profile: NonComparativeEvidence
Parent: EvidenceR6
Id: non-comparative-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The NonComparativeEvidence Profile is used for evidence about a single group with no comparisons between groups." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains nonComparative 1..* MS
* useContext[nonComparative].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[nonComparative].code.code = #program
* useContext[nonComparative].code.display = "Program"
* useContext[nonComparative].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#NonComparativeEvidence "NonComparativeEvidence"
* variableDefinition 2..*
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "extension(url : variableRole).valueCode"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..* MS and outcome 1..* MS
* variableDefinition[population]
  * ^extension[VariableDefinitionVariableRoleCode].valueCode = #population
  * observed only Reference(StudyGroup or InterventionGroup or ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
  * intended only Reference(Group)
* variableDefinition[outcome]
  * ^extension[VariableDefinitionVariableRoleCode].valueCode = #outcome
  * observed only Reference(OutcomeVariable or ExposureVariable or ParticipantFlowMeasure)
  * intended only Reference(EvidenceVariable)
