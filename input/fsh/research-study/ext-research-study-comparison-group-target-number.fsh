Extension: ResearchStudyComparisonGroupTargetNumber
Id: research-study-comparison-group-target-number
Description: "Estimated total number of participants to be enrolled in the comparison group."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy.comparisonGroup"
* value[x] only unsignedInt
* . ^short = "Estimated total number of participants to be enrolled in the comparison group."
* . ^definition = "Estimated total number of participants to be enrolled in the comparison group."
