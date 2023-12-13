Extension: CharacteristicInstancesRange
Id: characteristic-instances-range
Description: "Number of occurrences meeting the characteristic."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] only Range
* . ^short = "Number of occurrences meeting the characteristic"
* . ^definition = "Number of occurrences meeting the characteristic."
