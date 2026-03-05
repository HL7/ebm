Extension: RelevantForAutomatedMatching
Id: relevantForAutomatedMatching
Description: "This characteristic is relevant for automated matching."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] only boolean
* . ^short = "Relevant for automated matching"
* . ^definition = "This characteristic is relevant for automated matching."
