Profile: DateAsRating
Parent: Classification
Id: date-as-rating
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The DateAsRating Profile is used for representing a date or dateTime as a classifier value."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* content
  * extension contains ArtifactAssessmentDateAsRating named dateAsRating 0..*

