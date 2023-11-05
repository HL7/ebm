Profile: OutcomeMeasureEvidence
Parent: Evidence
Id: outcome-measure-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The OutcomeMeasureEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains outcome 1..* MS
* useContext[outcome].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[outcome].code.code = #program
* useContext[outcome].code.display = "Program"
* useContext[outcome].valueCodeableConcept.text = "outcome-measure-evidence"
* variableDefinition 2..*
  * ^comment = "The Outcome has variableRole of measuredVariable."
* variableDefinition ^slicing.discriminator.type = #pattern
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains outcome 1..1 MS
* variableDefinition[outcome].variableRole = http://terminology.hl7.org/CodeSystem/variable-role#meauredVariable "measured variable"