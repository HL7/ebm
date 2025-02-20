Extension: TargetCanonical
Id: target-canonical
Description: "A canonical URL for the target artifact."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition.relatesTo"
* value[x] only canonical
* . ^short = "The canonical URL for the target artifact"
* . ^definition = "The canonical URL for the target artifact."