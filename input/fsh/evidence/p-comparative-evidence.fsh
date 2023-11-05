Profile: ComparativeEvidence
Parent: Evidence
Id: comparative-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The ComparativeEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention, and an exposure variable with two or more categories that are being compared." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains comparative 1..* MS
* useContext[comparative].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[comparative].code.code = #program
* useContext[comparative].code.display = "Program"
* useContext[comparative].valueCodeableConcept.text = "comparative-evidence"
* variableDefinition 3..*
  * ^comment = "To report comparative evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use four variableDefinition instances. In the 4-variable approach, the Population has variableRole of population, the Intervention has variableRole of exposure, the Comparator has variableRole of referenceExposure, and the Outcome has variableRole of measuredVariable. In some types of Comparative Evidence, where the groups being compared are not from the same Population (and thus not a PICO-style research question), the combination of Population and Intervention is expressed with the variableRole of exposure, the combination of Population and Comparator is expressed with the variableRole of referenceExposure, and the Outcome is expressed with the variableRole of measuredVariable. The 3-variable approach may be used for example to compare cats and dogs."
* variableDefinition ^slicing.discriminator.type = #pattern
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains exposure 1..* and comparator 1..1 and outcome 1..1 MS
* variableDefinition[exposure].variableRole = http://terminology.hl7.org/CodeSystem/variable-role#exposure "exposure"
* variableDefinition[comparator].variableRole = http://terminology.hl7.org/CodeSystem/variable-role#referenceExposure "reference exposure"
* variableDefinition[outcome].variableRole = http://terminology.hl7.org/CodeSystem/variable-role#meauredVariable "measured variable"