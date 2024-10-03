Extension: EvidenceVariablePeriod
Id: evidence-variable-period
Description: "Date(s) and time(s) when the variable is observed."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] only Period
* . ^short = "Date(s) and time(s) when the variable is observed"
* . ^definition = "When the variable is observed in relation to calendar dates and times."
