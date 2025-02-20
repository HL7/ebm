Extension: TargetAttachment
Id: target-attachment
Description: "The target artifact as an attachment."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition.relatesTo"
* value[x] only Attachment
* . ^short = "The target artifact as an attachment"
* . ^definition = "The target artifact as an attachment."