Extension: ResearchStudyExcludedStudy
Id: research-study-excluded-study
Description: "Link to a research study excluded from the systematic review."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only Reference(Citation or Composition or ResearchStudy)
* . ^short = "Link to a research study excluded from the systematic review."
* . ^definition = "Link to a research study excluded from the systematic review."
