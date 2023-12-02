Extension: StatisticModelIncludeIf
Id: statistic-model-include-if
Description: "The condition under which the variable (or modelCharacteristic) will be included."
* ^context[0].type = #element
* ^context[0].expression = "Evidence.statistic.modelCharacteristic"
* ^context[1].type = #element
* ^context[1].expression = "Evidence.statistic.modelCharacteristic.variable"
* value[x] 0..0
* . ^short = "Condition upon which to include the variable or model characteristic in the analysis"
* . ^definition = "The condition upon which to include the variable or model characteristic in the analysis."
* extension contains attribute 1..1 and value 1..1
* extension[attribute].value[x] only CodeableConcept
  * ^short = "Type of condition"
  * ^definition = "Type of condition."
* extension[value].value[x] only CodeableConcept or Quantity or Range or Expression or boolean
  * ^short = "Value of condition"
  * ^definition = "Value of condition."