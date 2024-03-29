Extension: EvidenceVariableCategoryValueReference
Id: evidence-variable-category-value-reference
Description: "Reference to a Group Resource to express a definition for a categorical value."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable.category"
* value[x] only Reference(Group)
* . ^short = "Defines the categorical value with a Reference"
* . ^definition = "Defines the categorical value with a Reference."
