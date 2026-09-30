Extension: ResearchStudyVersionDate
Id: research-study-version-date
Description: "Protocol version date."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only date
* . ^short = "Protocol version date"
* . ^definition = "Protocol version date."
