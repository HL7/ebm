Extension: StatisticModelIntended
Id: statistic-model-intended
Description: "The plan for analysis."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Evidence.statistic.modelCharacteristic"
* value[x] only boolean
* . ^short = "The plan for analysis"
* . ^definition = "The plan for analysis."
