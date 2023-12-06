Profile: DateAsRating
Parent: Classification
Id: date-as-rating
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The DateAsRating Profile is used for representing a date or dateTime as a classifier value."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* content
  * extension contains ArtifactAssessmentDateAsRating named dateAsRating 0..*
