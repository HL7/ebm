Extension: CompositionExtendedContactDetail
Id: composition-extended-contact-detail
Description: "Specifies contact information for a specific purpose over a period of time."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] only ExtendedContactDetail
* . ^short = "ContactDetail with purpose"
* . ^definition = "Specifies contact information for a specific purpose over a period of time."