Extension: StatisticModelApplied
Id: statistic-model-applied
Description: "The analysis that was applied."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Evidence.statistic.modelCharacteristic"
* value[x] only boolean
* . ^short = "The analysis that was applied"
* . ^definition = "The analysis that was applied."
