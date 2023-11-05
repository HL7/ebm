Profile: BaselineMeasureEvidence
Parent: Evidence
Id: baseline-measure-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The BaselineMeasureEvidence Profile is used for evidence with a measured variable (with the role of outcome for this Evidence) that is considered an independent variable with respect to the outcome of an exposure or intervention in a study." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains baseline 1..* MS
* useContext[baseline].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[baseline].code.code = #program
* useContext[baseline].code.display = "Program"
* useContext[baseline].valueCodeableConcept.text = "baseline-measure-evidence"
* variableDefinition 2..*
  * ^comment = "The Baseline Measure (or independent variable) has variableRole of measuredVariable."
* variableDefinition ^slicing.discriminator.type = #pattern
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains baseline 1..1 MS
* variableDefinition[baseline].variableRole = http://terminology.hl7.org/CodeSystem/variable-role#meauredVariable "measured variable"