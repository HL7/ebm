Extension: ArtifactApprovalDate
Id: artifact-approvalDate
Description: "When the resource was approved by publisher."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] only date
* . ^short = "When the resource was approved by publisher"
* . ^definition = "The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage."
