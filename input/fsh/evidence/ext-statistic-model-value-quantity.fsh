Extension: StatisticModelValueQuantity
Id: statistic-model-value-quantity
Description: "The specific value (when paired with code) as a Quantity"
* ^context.type = #element
* ^context.expression = "Evidence.statistic.modelCharacteristic"
* value[x] only SimpleQuantity
* . ^short = "Value as Quantity"
* . ^definition = "The specific value (when paired with code) as a Quantity"
