Extension: StatisticModelValueRange
Id: statistic-model-value-range
Description: "The specific value (when paired with code) as a Quantity"
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Evidence.statistic.modelCharacteristic"
* value[x] only Range
* . ^short = "Value as Range"
* . ^definition = "The specific value (when paired with code) as a Range"
