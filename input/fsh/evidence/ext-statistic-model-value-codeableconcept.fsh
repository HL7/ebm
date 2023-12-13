Extension: StatisticModelValueCodeableConcept
Id: statistic-model-value-codeableconcept
Description: "The specific value (when paired with code) as a CodeableConcept"
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Evidence.statistic.modelCharacteristic"
* value[x] only CodeableConcept
* . ^short = "Value as CodeableConcept"
* . ^definition = "The specific value (when paired with code) as a CodeableConcept"
