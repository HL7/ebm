Profile: OutcomeMeasureEvidence
Parent: EvidenceR6
Id: outcome-measure-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The OutcomeMeasureEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains outcome 1..* MS
* useContext[outcome].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[outcome].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#OutcomeMeasureEvidence "OutcomeMeasureEvidence"
* variableDefinition 2..*
  * ^comment = "The Outcome has variableRole of outcome."
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "extension(url : variableRoleCode).valueCode"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..* MS and outcome 1..* MS
* variableDefinition[population]
  * ^extension[VariableDefinitionVariableRoleCode].valueCode = #population
  * observed only Reference(StudyGroup or ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
* variableDefinition[outcome]
  * ^extension[VariableDefinitionVariableRoleCode].valueCode = #outcome
  * observed only Reference(ExposureVariable or OutcomeVariable)
