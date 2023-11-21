Profile: GroupAssignment
Parent: ExposureVariable
Id: group-assignment
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The GroupAssignment Profile is used to classify an EvidenceVariable as an exposure managed as a categorical variable. The variable definitions are found in the category element instead of the definition element."
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains groupAssignment 1..* MS
* useContext[groupAssignment].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[groupAssignment].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#GroupAssignment "GroupAssignment"
* handling = #categorical
* category 2..*
  * name 1..1