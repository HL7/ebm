Extension: ResearchStudyNumberOfStudiesIdentified
Id: research-study-number-of-studies-identified
Description: "Number of studies found on search to be evaluated for inclusion."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only unsignedInt
* . ^short = "Number of studies found on search."
* . ^definition = "Number of studies found on search to be evaluated for inclusion."
