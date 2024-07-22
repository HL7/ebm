Extension: ResearchStudyResultAsComposition
Id: research-study-result-as-compostion
Description: "Link to results generated by the study, using a Composition Resource."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only Reference(Composition)
* . ^short = "Link to results generated by the study."
* . ^definition = "Link to results generated by the study, using a Composition Resource."
