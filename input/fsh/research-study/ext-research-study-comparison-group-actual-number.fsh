Extension: ResearchStudyComparisonGroupActualNumber
Id: research-study-comparison-group-actual-number
Description: "Actual total number of participants enrolled in the comparison group."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy.comparisonGroup"
* value[x] only unsignedInt
* . ^short = "Actual total number of participants enrolled in the comparison group."
* . ^definition = "Actual total number of participants enrolled in the comparison group."
