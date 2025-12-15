Extension: ArtifactRecorder
Id: artifact-recorder
Description: "The entity that entered the data for the Resource content."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "Resource"
* value[x] only ContactDetail
* . ^short = "Who entered the data"
* . ^definition = "The entity that entered the data for the Resource content."
