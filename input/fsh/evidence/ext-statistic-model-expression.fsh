Extension: StatisticModelExpression
Id: statistic-model-expression
Description: "An expression that defines the statistical analysis."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Evidence.statistic"
* value[x] only Expression
* . ^short = "The formula for analysis"
* . ^definition = "The formula for analysis."
