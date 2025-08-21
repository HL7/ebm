Extension: ArtifactPublicationStatus
Id: artifact-publication-status
Description: "The status of the processing for making the artifact publicly available."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "Resource"
* value[x] only CodeableConcept
* . ^short = "Publication status"
* . ^definition = "The status of the processing for making the artifact publicly available, not necessarily the same as artifact status (Resource.status)."
* valueCodeableConcept from http://terminology.hl7.org/ValueSet/cited-artifact-status-type (preferred)
