Extension: ArtifactEffectivePeriod
Id: artifact-effectivePeriod
Description: "The period during which the resource content was or is planned to be in active use."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] only Period
* . ^short = "When the resource is expected to be used"
* . ^definition = "The period during which the resource content was or is planned to be in active use."
