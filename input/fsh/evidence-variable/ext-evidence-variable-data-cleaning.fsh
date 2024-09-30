Extension: EvidenceVariableDataCleaning
Id: evidence-variable-data-cleaning
Description: "A method or transformation applied for data that does not match required patterns."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] only CodeableConcept
* . ^short = "How erroneous data is processed"
* . ^definition = "A method or transformation applied for data that does not match required patterns."