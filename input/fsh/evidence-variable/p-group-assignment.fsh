Profile: GroupAssignment
Parent: VariableDefinition
Id: group-assignment
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The GroupAssignment Profile is used to classify an EvidenceVariable as an exposure managed as a categorical variable. The variable definitions are found in the category element instead of the definition element."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension[definition].valueCodeableReference.concept.coding 1..1
* extension[definition].valueCodeableReference.concept.coding = https://fevir.net/resources/CodeSystem/179423#defined-in-handling-and-category "Defined in handling and category elements"
* category 2..*
  * name 1..1