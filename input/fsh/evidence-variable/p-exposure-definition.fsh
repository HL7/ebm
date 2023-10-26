Profile: ExposureDefinition
Parent: VariableDefinition
Id: exposure-definition
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The ExposureDefinition Profile is used to classify an EvidenceVariable as an exposure (e.g. an intervention or factor identifying a comparator group) for use in implementations that manage expoures differently than outcomes." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains exposure 1..1 MS
* useContext[exposure].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[exposure].code.code = #program
* useContext[exposure].code.display = "Program"
* useContext[exposure].valueCodeableConcept.text = "exposure"