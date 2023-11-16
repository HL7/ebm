Profile: EvidenceR6
Parent: Evidence
Id: evidence-r6
Description: "Profile of Evidence for Evidence Based Medicine IG. The EvidenceR6 Profile is used to adjust the R5 Evidence base to match the structures in R6." 
* variableDefinition
  * extension contains VariableDefinitionVariableRoleCode named variableRole 1..1
  * extension contains VariableDefinitionRoleSubtype named roleSubtype 0..1
  * extension contains VariableDefinitionComparatorCategory named comparatorCategory 0..1
  * variableRole.text = "Use extension:variableRole instead."
* statistic.modelCharacteristic
  * extension contains StatisticModelIntended named intended 0..1 and StatisticModelIncludeIf named includeIf 0..1
* statistic.modelCharacteristic.variable
  * extension contains StatisticModelIncludeIf named includeIf 0..1

