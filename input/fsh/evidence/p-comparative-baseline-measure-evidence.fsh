Profile: ComparativeBaselineMeasureEvidence
Parent: ComparativeEvidence
Id: comparative-baseline-measure-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The ComparativeBaselineMeasureEvidence Profile is used for comparative evidence with a measured variable (with the role of outcome for this Evidence) that is considered an independent variable with respect to the outcome of an exposure or intervention in a study." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains baseline 1..* MS
* useContext[baseline].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[baseline].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#ComparativeBaselineMeasureEvidence "ComparativeBaselineMeasureEvidence"
* variableDefinition
  * ^comment = "The Baseline Measure (or independent variable) has variableRole of outcome."
  * intended 0..0
  * directnessMatch 0..0
