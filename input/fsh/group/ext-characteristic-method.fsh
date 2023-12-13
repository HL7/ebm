Extension: CharacteristicMethod
Id: characteristic-method
Description: "Method for how the characteristic value was determined."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] only CodeableConcept
* . ^short = "Method for how the characteristic value was determined"
* . ^definition = "Method for how the characteristic value was determined."
