Profile: InterventionOnlyEvidence
Parent: NonComparativeEvidence
Id: intervention-only-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The InterventionOnlyEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention, and an exposure that is the intervention of interest in a comparative evidence. The InterventionOnlyEvidence descirbes the evidence for the intervention group." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains intervention 1..1 MS
* useContext[intervention].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[intervention].code.code = #program
* useContext[intervention].code.display = "Program"
* useContext[intervention].valueCodeableConcept.text = "intervention-only-evidence"
* variableDefinition
  * ^comment = "To report intervention-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use three variableDefinition instances. In the 3-variable approach, the Population has variableRole of population, the Intervention  has variableRole of exposure, the Comparator is not included in the ComparatorOnlyEvidence, and the Outcome has variableRole of measuredVariable. In some types of InterventionOnlyEvidence, where the groups being compared are not from the same Population (and thus not a PICO-style research question), the combination of Population and Intervention is expressed with the variableRole of exposure, and the Outcome is expressed with the variableRole of measuredVariable. The 2-variable approach may be used for example to compare cats and dogs."