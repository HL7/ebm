Extension: VariableDefinitionVariableRoleCode
Id: variable-definition-variable-role-code
Description: "Classification of the role of the variable."
* ^context.type = #element
* ^context.expression = "Evidence.variableDefinition"
* value[x] only code
* . ^short = "population | exposure | outcome | covariate"
* . ^definition = "Classification of the role of the variable."
