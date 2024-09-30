Extension: EvidenceVariableDatatype
Id: evidence-variable-datatype
Description: "Type of data used to express values of the variable."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] only CodeableConcept
* . ^short = "Type of data used to express value of the variable"
* . ^definition = "Type of data used to express values of the variable."
