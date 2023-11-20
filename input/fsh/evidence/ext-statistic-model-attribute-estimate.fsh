Extension: StatisticModelAttributeEstimate
Id: statistic-model-attribute-estimate
Description: "An attribute of the statistic used as a model characteristic."
* ^context.type = #element
* ^context.expression = "Evidence.statistic.modelCharacteristic.modelCharacteristic"
* value[x] 0..0
* . ^short = "An attribute of the statistic used as a model characteristic"
* . ^definition = "An attribute of the statistic used as a model characteristic."
* extension contains description 0..1 and type 0..1 and quantity 0..1 and level 0..1 and range 0..1
* extension[description].value[x] only markdown
  * ^short = "Textual description of the attribute estimate"
  * ^definition = "Human-readable summary of the estimate."
* extension[type].value[x] only CodeableConcept
  * ^short = "The type of attribute estimate, e.g., confidence interval or p value"
  * ^definition = "The type of attribute estimate, e.g., confidence interval or p value."
* extension[quantity].value[x] only Quantity
  * ^short = "The singular quantity of the attribute estimate, for attribute estimates represented as single values"
  * ^definition = "The singular quantity of the attribute estimate, for attribute estimates represented as single values; also used to report unit of measure."
* extension[level].value[x] only decimal
  * ^short = "Level of confidence interval, e.g., 0.95 for 95% confidence interval"
  * ^definition = "Level of confidence interval, e.g., 0.95 for 95% confidence interval."
* extension[range].value[x] only Range
  * ^short = "Lower and upper bound values of the attribute estimate"
  * ^definition = "Lower and upper bound values of the attribute estimate."