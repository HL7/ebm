Extension: CharacteristicDeterminedByReference
Id: characteristic-determined-by-reference
Description: "Method for how the characteristic value was determined."
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] only Reference(Device or DeviceDefinition or DeviceMetric)
* . ^short = "Method for how the characteristic value was determined"
* . ^definition = "Method for how the characteristic value was determined."
