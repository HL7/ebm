Extension: RelativeOutcomeImportance
Id: relative-outcome-importance
Description: "Relative importance multiplier."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "Evidence.variableDefinition"
* value[x] only Reference(OutcomeImportance)
* . ^short = "Relative importance multiplier"
* . ^definition = "Relative importance multiplier."