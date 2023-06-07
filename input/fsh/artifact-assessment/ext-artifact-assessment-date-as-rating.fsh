Extension: ArtifactAssessmentDateAsRating
Id: artifact-assessment-date-as-rating
Description: "A date or dateTime value as the classifier or rating value."
* ^context.type = #element
* ^context.expression = "ArtifactAssessment.content"
* value[x] only dateTime
* . ^short = "A date value as the classifier or rating value."
* . ^definition = "A date or dateTime value as the classifier or rating value."
