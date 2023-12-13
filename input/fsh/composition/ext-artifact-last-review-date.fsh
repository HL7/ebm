Extension: ArtifactLastReviewDate
Id: artifact-lastReviewDate
Description: "When the resource was approved by publisher."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] only date
* . ^short = "When the resource was last reviewed by the publisher"
* . ^definition = "The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date."
