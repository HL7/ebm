Extension: ResearchStudyNumberOfStudiesIncluded
Id: research-study-number-of-studies-included
Description: "Number of studies selected for inclusion."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only unsignedInt
* . ^short = "Number of studies selected for inclusion."
* . ^definition = "Number of studies selected for inclusion."
