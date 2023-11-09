Profile: OutcomeMeasureEvidence
Parent: Evidence
Id: outcome-measure-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The OutcomeMeasureEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains outcome 1..* MS
* useContext[outcome].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[outcome].code.code = #program
* useContext[outcome].code.display = "Program"
* useContext[outcome].valueCodeableConcept.text = "outcome-measure-evidence"
* variableDefinition 2..*
  * ^comment = "The Outcome has variableRole of outcome."
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..* MS and outcome 1..* MS
* variableDefinition[population].variableRole = #population
* variableDefinition[population]
  * observed only Reference(StudyGroup or InterventionGroup or ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
* variableDefinition[outcome].variableRole = #outcome
* variableDefinition[outcome]
  * observed only Reference(ExposureVariable or OutcomeVariable)
