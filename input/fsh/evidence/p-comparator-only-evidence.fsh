Profile: ComparatorOnlyEvidence
Parent: NonComparativeEvidence
Id: comparator-only-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The ComparatorOnlyEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention, and an exposure that is the reference expsoure in a comparative evidence. The ComparatorOnlyEvidence descirbes the evidence for the comparator group." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext contains comparator 1..1 MS
* useContext[comparator].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[comparator].code.code = #program
* useContext[comparator].code.display = "Program"
* useContext[comparator].valueCodeableConcept.text = "comparator-only-evidence"
* variableDefinition
  * ^comment = "To report comparator-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use three variableDefinition instances. In the 3-variable approach, the Population has variableRole of population, the Intervention is not included in the ComparatorOnlyEvidence, the Comparator has variableRole of exposure, and the Outcome has variableRole of measuredVariable. In some types of ComparatorOnlyEvidence, where the groups being compared are not from the same Population (and thus not a PICO-style research question), the combination of Population and Comparator is expressed with the variableRole of exposure, and the Outcome is expressed with the variableRole of measuredVariable. The 2-variable approach may be used for example to compare cats and dogs."