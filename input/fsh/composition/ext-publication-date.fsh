Extension: PublicationDate
Id: publication-date
Description: "The date the Composition is made publicly available."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] only date
* . ^short = "Date made publicly available"
* . ^definition = "The date the Composition is made publicly available, not necessarily the same as approvalDate, lastReviewedDate, or date (last revised date)."
