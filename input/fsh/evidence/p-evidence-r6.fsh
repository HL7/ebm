Profile: EvidenceR6
Parent: Evidence
Id: evidence-r6
Description: "Profile of Evidence for Evidence Based Medicine IG. The EvidenceR6 Profile is used to adjust the R5 Evidence base to match the structures in R6." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* variableDefinition
  * extension contains VariableDefinitionVariableRoleCode named variableRoleCode 1..1
  * extension contains VariableDefinitionRoleSubtype named roleSubtype 0..1
  * extension contains VariableDefinitionComparatorCategory named comparatorCategory 0..1
* statistic
  * extension contains StatisticModelExpression named modelExpression 0..1
* statistic.modelCharacteristic
  * extension contains StatisticModelValueQuantity named valueQuantity 0..1 and
  StatisticModelValueRange named valueRange 0..1 and
  StatisticModelValueCodeableConcept named valueCodeableConcept 0..1 and
  StatisticModelIntended named intended 0..1 and 
  StatisticModelApplied named applied 0..1 and 
  StatisticModelIncludeIf named includeIf 0..1
* statistic.modelCharacteristic.variable
  * extension contains StatisticModelIncludeIf named includeIf 0..1

