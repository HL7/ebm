Profile: InterventionOnlyEvidence
Parent: NonComparativeEvidence
Id: intervention-only-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The InterventionOnlyEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention. The InterventionOnlyEvidence describes the evidence for the intervention group." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains intervention 1..* MS
* useContext[intervention].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[intervention].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#InterventionOnlyEvidence "InterventionOnlyEvidence"
* variableDefinition
  * ^comment = "To report intervention-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Intervention has the variableRole of population, the Comparator is not included in the InterventionOnlyEvidence, and the Outcome has variableRole of outcome."
* variableDefinition[population]
  * observed only Reference(InterventionGroup or ExposureGroup or MetaanalysisStudyGroup)