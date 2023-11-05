Profile: GroupAssignment
Parent: ExposureVariable
Id: group-assignment
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The GroupAssignment Profile is used to classify an EvidenceVariable as an exposure managed as a categorical variable. The variable definitions are found in the category element instead of the definition element."
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains groupAssignment 1..* MS
* useContext[groupAssignment].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[groupAssignment].code.code = #program
* useContext[groupAssignment].code.display = "Program"
* useContext[groupAssignment].valueCodeableConcept.text = "group-assignment"
* category 2..*