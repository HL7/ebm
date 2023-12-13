Extension: CombinationThreshold
Id: combination-threshold
Description: "Provides the value of n when at-least or at-most codes are used for combinationMethod."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Group"
* value[x] only positiveInt
* . ^short = "Provides the value of n when at-least or at-most codes are used"
* . ^definition = "Provides the value of n when at-least or at-most codes are used for combinationMethod."
