Extension: AdditionalLanguage
Id: additional-language
Description: "The Resource contains content in a language additional to the one in the language element."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] only code
* . ^short = "The additional language"
* . ^definition = "The Resource contains content in a language additional to the one in the language element.."