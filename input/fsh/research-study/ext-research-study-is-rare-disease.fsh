Extension: ResearchStudyIsRareDisease
Id: research-study-is-rare-disease
Description: "Is a study with a population having a rare disease."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only boolean
* . ^short = "Is a rare disease"
* . ^definition = "Is study with a population having a rare disease."
