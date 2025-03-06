Extension: ResearchStudyComparisonGroupEligibility
Id: research-study-comparison-group-eligibility
Description: "Inclusion and exclusion criteria for the comparison group."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy.comparisonGroup"
* value[x] only Reference(Group)
* . ^short = "Inclusion and exclusion criteria for the comparison group."
* . ^definition = "Inclusion and exclusion criteria for the comparison group as a subset of the eligibility for the overall study. The referenced Group Resource should have a membership element value of either 'definitional' or 'conceptual'."
