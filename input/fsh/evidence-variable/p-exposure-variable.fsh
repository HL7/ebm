Profile: ExposureVariable
Parent: VariableDefinition
Id: exposure-variable
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The ExposureVariable Profile is used to classify an EvidenceVariable as an exposure (e.g. an intervention or independent variable of primary interest) for use in implementations that manage exposures differently than outcomes." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains exposure 1..* MS
* useContext[exposure].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[exposure].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#ExposureVariable "ExposureVariable"