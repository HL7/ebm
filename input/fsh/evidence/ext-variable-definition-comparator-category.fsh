Extension: VariableDefinitionComparatorCategory
Id: variable-definition-comparator-category
Description: "The reference value used for comparison."
* ^context.type = #element
* ^context.expression = "Evidence.variableDefinition"
* value[x] only string
* . ^short = "The reference value used for comparison"
* . ^definition = "The reference value used for comparison. Value should match EvidenceVariable.category.name in the EvidenceVariable referenced in the observed or intended element."
