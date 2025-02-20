Extension: TargetMarkdown
Id: target-markdown
Description: "A string that describes the target artifact."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition.relatesTo"
* value[x] only markdown
* . ^short = "The description of the target artifact"
* . ^definition = "The description of the target artifact."