Profile: NonComparativeEvidence
Parent: Evidence
Id: non-comparative-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The NonComparativeEvidence Profile is used for evidence about a single group with no comparisons between groups." 
* variableDefinition 2..*
* variableDefinition ^slicing.discriminator.type = #pattern
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains outcome 1..1 MS
* variableDefinition[outcome].variableRole = http://terminology.hl7.org/CodeSystem/variable-role#meauredVariable "measured variable"