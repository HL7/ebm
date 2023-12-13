Extension: VariableDefinitionVariableRoleCode
Id: variable-definition-variable-role-code
Description: "Classification of the role of the variable."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Evidence.variableDefinition"
* value[x] only code
* . ^short = "population | exposure | outcome | covariate"
* . ^definition = "Classification of the role of the variable."
