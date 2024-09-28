Extension: EvidenceVariableClassifier
Id: evidence-variable-classifier
Description: "Classification of the EvidenceVariable."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] only CodeableConcept
* . ^short = "Classification"
* . ^definition = "Classification of the variable."
