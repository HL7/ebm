Extension: EvidenceVariableDefinition
Id: evidence-variable-definition
Description: "Reference to a CodeableConcept and/or a Group Resource to express a definition for an EvidenceVariable."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] only CodeableReference(Group)
* . ^short = "Defines the variable with a concept and/or Reference"
* . ^definition = "Defines the variable with a concept and/or Reference."
