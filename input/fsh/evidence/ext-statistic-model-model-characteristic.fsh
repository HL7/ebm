Extension: StatisticModelModelCharacteristic
Id: statistic-model-model-characteristic
Description: "Model component as a nested model characteristic."
* ^context.type = #element
* ^context.expression = "Evidence.statistic.modelCharacteristic"
* value[x] 0..0
* . ^short = "Model component"
* . ^definition = "Model component as a nested model characteristic."
* extension contains code 1..1 and value 0..1 and attributeEstimateExpression 0..* and modelCharacteristicExpression 0..*
* extension[code].value[x] only CodeableConcept
  * ^short = "Model specification"
  * ^definition = "Description of a component of the method to generate the statistic."
* extension[value].value[x] only SimpleQuantity or Range or CodeableConcept
  * ^short = "The specific value (when paired with code)"
  * ^definition = "Further specification of the value of the component of the method to generate the statistic."
* extension[attributeEstimateExpression].value[x] only Expression
  * ^short = "An attribute of the statistic used as a model characteristic"
  * ^definition = "An attribute of the statistic used as a model characteristic."
* extension[modelCharacteristicExpression].value[x] only Expression
  * ^short = "Model component"
  * ^definition = "A nested model characteristic."
