Extension: ArtifactAssessmentCompared
Id: artifact-assessment-compared
Description: "The artifact being compared to the referenced artifact."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ArtifactAssessment"
* value[x] only Reference or canonical or uri
* . ^short = "The artifact being compared to the referenced artifact"
* . ^definition = "The artifact being compared to the referenced artifact."
