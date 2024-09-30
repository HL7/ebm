Extension: EvidenceVariableMissingData
Id: evidence-variable-missing-data
Description: "A method or transformation applied for missing data."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] only CodeableConcept
* . ^short = "How missing data is interpreted"
* . ^definition = "A method or transformation applied for missing data."