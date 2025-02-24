Extension: EvidenceVariableDataStorage
Id: evidence-variable-data-storage
Description: "How the data element is organized and where the data element (expressing the value of the variable) is found in the dataset."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] 0..0
* . ^short = "How and where the data element (value of the variable) is found"
* . ^definition = "How the data element is organized and where the data element (expressing the value of the variable) is found in the dataset."
* extension contains datatype 0..1 and path 0..1 and delimiter 0..1
* extension[datatype].value[x] only CodeableConcept
  * ^short = "Type of data used to express value of the variable"
  * ^definition = "The type of data used to express values of the variable."
* extension[path].value[x] only string
  * ^short = "How to find the data element in the dataset"
  * ^definition = "The mapping (order of elements) to reach the element containing the data element in the dataset."
* extension[delimiter].value[x] only string
  * ^short = "Character(s) separating values in a string-based list"
  * ^definition = "A character or series of characters that is used within a string to signal the separation of discrete values."
  * ^comment = "The delimiter element SHOULD only be used when the datatype element is a string- or text-based datatype. The delimiter element is used when the data is stored in a string which contains a list or array of values."
