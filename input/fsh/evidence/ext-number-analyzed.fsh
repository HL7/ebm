Extension: NumberAnalyzed
Id: number-analyzed
Description: "The number of participants analyzed for the statistic. This extension is provided until the Implementation Guide uses a version of FHIR Evidence that includes this element."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "Evidence.statistic.sampleSize"
* value[x] only unsignedInt
* . ^short = "The number analyzed"
* . ^definition = "The number used for analysis for this statistic."
