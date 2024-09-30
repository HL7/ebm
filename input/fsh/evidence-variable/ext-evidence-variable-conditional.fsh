Extension: EvidenceVariableConditional
Id: evidence-variable-conditional
Description: "The context in which the EvidenceVariable is assessed."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] only Expression
* . ^short = "When the variable is observed"
* . ^definition = "The context, situation, or parameters within which the variable is observed."
