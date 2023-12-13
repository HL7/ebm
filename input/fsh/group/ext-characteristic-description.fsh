Extension: CharacteristicDescription
Id: characteristic-description
Description: "Natural language description of the characteristic."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] only markdown
* . ^short = "Natural language description of the characteristic"
* . ^definition = "A short, natural language description of the characteristic that could be used to communicate the criteria to an end-user."
