Extension: CharacteristicOffset
Id: characteristic-offset
Description: "Defines the reference point for comparison when other than 0."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] only CodeableConcept
* . ^short = "Reference point for comparison"
* . ^definition = "Defines the reference point for comparison when other than 0."
