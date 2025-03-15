Extension: TargetReference
Id: target-reference
Description: "A reference to the target artifact."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context[0].type = #element
* ^context[0].expression = "Composition.relatesTo"
* ^context[1].type = #element
* ^context[1].expression = "Citation.citedArtifact.relatesTo"
* value[x] only Reference
* . ^short = "The reference to the target artifact"
* . ^definition = "The reference to the target artifact."