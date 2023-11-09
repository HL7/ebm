Profile: ComparatorOnlyEvidence
Parent: NonComparativeEvidence
Id: comparator-only-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The ComparatorOnlyEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention, and a population that has an exposure with a categorical value that is the reference category for the exposure in a ComparativeEvidence Profile. The ComparatorOnlyEvidence describes the evidence for the comparator group." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains comparator 1..* MS
* useContext[comparator].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[comparator].code.code = #program
* useContext[comparator].code.display = "Program"
* useContext[comparator].valueCodeableConcept.text = "comparator-only-evidence"
* variableDefinition
  * ^comment = "To report comparator-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Comparator has the variableRole of population, the Intervention is not included in the ComparatorOnlyEvidence, and the Outcome has variableRole of outcome."
* variableDefinition[population]
  * observed only Reference(InterventionGroup or ExposureGroup or ComparatorGroup)
