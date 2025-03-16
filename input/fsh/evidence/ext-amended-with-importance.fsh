Extension: AmendedWithImportance
Id: amended-with-importance
Description: "Relative importance multiplier."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Evidence"
* value[x] only Reference(OutcomeImportance)
* . ^short = "Relative importance multiplier"
* . ^definition = "Relative importance multiplier."