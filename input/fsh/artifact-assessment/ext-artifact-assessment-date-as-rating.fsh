Extension: ArtifactAssessmentDateAsRating
Id: artifact-assessment-date-as-rating
Description: "A date or dateTime value as the classifier or rating value."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ArtifactAssessment.content"
* value[x] only dateTime
* . ^short = "A date value as the classifier or rating value."
* . ^definition = "A date or dateTime value as the classifier or rating value."
