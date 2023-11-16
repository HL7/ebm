Extension: StatisticModelValueRange
Id: statistic-model-value-range
Description: "The specific value (when paired with code) as a Quantity"
* ^context.type = #element
* ^context.expression = "Evidence.statistic.modelCharacteristic"
* value[x] only Range
* . ^short = "Value as Range"
* . ^definition = "The specific value (when paired with code) as a Range"
