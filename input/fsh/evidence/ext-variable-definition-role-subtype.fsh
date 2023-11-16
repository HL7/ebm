Extension: VariableDefinitionRoleSubtype
Id: variable-definition-role-subtype
Description: "Sub-classification of the role of the variable."
* ^context.type = #element
* ^context.expression = "Evidence.variableDefinition"
* value[x] only CodeableConcept
* . ^short = "subgroup | variable-A | variable-B | variable-AB | confounder | collider | mediator | effect-modifier"
* . ^definition = "Sub-classification of the role of the variable."
* valueCodeableConcept from evidence-variable-role-subtype (extensible)
