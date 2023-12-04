Profile: EvidenceR6
Parent: Evidence
Id: evidence-r6
Description: "Profile of Evidence for Evidence Based Medicine IG. The EvidenceR6 Profile is used to adjust the R5 Evidence base to match the structures in R6." 
* variableDefinition
  * extension contains VariableDefinitionVariableRoleCode named variableRoleCode 1..1
  * extension contains VariableDefinitionRoleSubtype named roleSubtype 0..1
  * extension contains VariableDefinitionComparatorCategory named comparatorCategory 0..1
  * variableRole.text = "Use extension:variableRoleCode instead."
* statistic.modelCharacteristic
  * extension contains StatisticModelValueQuantity named valueQuantity 0..1 and
  StatisticModelValueRange named valueRange 0..1 and
  StatisticModelValueCodeableConcept named valueCodeableConcept 0..1 and
  StatisticModelIntended named intended 0..1 and 
  StatisticModelApplied named applied 0..1 and 
  StatisticModelIncludeIf named includeIf 0..1
  * value 0..0
* statistic.modelCharacteristic.variable
  * extension contains StatisticModelIncludeIf named includeIf 0..1

