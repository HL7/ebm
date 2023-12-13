Extension: CombinationMethod
Id: combination-method
Description: "Used to specify how two or more characteristics are combined."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Group"
* value[x] only code
* . ^short = "all-of | any-of | at-least | at-most | except-subset"
* . ^definition = "Used to specify how two or more characteristics are combined."
