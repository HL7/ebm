Extension: CharacteristicValueExpression
Id: characteristic-value-expression
Description: "The value of the trait that holds for members of the group, held by Expression."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] only Expression
* . ^short = "Value held by Expression"
* . ^definition = "The value of the trait that holds for members of the group, held by Expression."
