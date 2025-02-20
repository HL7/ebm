Extension: TargetReference
Id: target-reference
Description: "A reference to the target artifact."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition.relatesTo"
* value[x] only Reference
* . ^short = "The reference to the target artifact"
* . ^definition = "The reference to the target artifact."