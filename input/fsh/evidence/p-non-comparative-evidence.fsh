Profile: NonComparativeEvidence
Parent: Evidence
Id: non-comparative-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The NonComparativeEvidence Profile is used for evidence about a single group with no comparisons between groups." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains nonComparative 1..* MS
* useContext[nonComparative].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[nonComparative].code.code = #program
* useContext[nonComparative].code.display = "Program"
* useContext[nonComparative].valueCodeableConcept.text = "non-comparative-evidence"
* variableDefinition 2..*
* variableDefinition ^slicing.discriminator.type = #pattern
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains outcome 1..1 MS
* variableDefinition[outcome].variableRole = http://terminology.hl7.org/CodeSystem/variable-role#meauredVariable "measured variable"