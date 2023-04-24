Extension: ArtifactLastReviewDate
Id: artifact-lastReviewDate
Description: "When the resource was approved by publisher."
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] only date
* . ^short = "When the resource was last reviewed by the publisher"
* . ^definition = "The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date."
