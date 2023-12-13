Extension: StatisticModelValueQuantity
Id: statistic-model-value-quantity
Description: "The specific value (when paired with code) as a Quantity"
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Evidence.statistic.modelCharacteristic"
* value[x] only SimpleQuantity
* . ^short = "Value as Quantity"
* . ^definition = "The specific value (when paired with code) as a Quantity"
