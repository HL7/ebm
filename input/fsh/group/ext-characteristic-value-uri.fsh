Extension: CharacteristicValueUri
Id: characteristic-value-uri
Description: "The value of the trait that holds for members of the group, held by uri."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] only uri
* . ^short = "Value held by uri"
* . ^definition = "The value of the trait that holds for members of the group, held by uri."
