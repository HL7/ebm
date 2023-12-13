Extension: CharacteristicDurationDuration
Id: characteristic-duration-duration
Description: "Length of time in which the characteristic is met."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] only Duration
* . ^short = "Length of time in which the characteristic is met"
* . ^definition = "Length of time in which the characteristic is met."
