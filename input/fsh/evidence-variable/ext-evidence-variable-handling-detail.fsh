Extension: EvidenceVariableHandlingDetail
Id: evidence-variable-handling-detail
Description: "Handling of the variable that is not boolean, continuous, dichotomous, ordinal, or polychotomous."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context[0].type = #element
* ^context[0].expression = "EvidenceVariable"
* ^context[1].type = #element
* ^context[1].expression = "Evidence.statistic.modelCharacteristic.variable"
* value[x] only CodeableConcept
* . ^short = "How the variable is handled"
* . ^definition = "andling of the variable that is not boolean, continuous, dichotomous, ordinal, or polychotomous."
