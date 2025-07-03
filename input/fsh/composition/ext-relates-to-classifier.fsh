Extension: RelatesToClassifier
Id: relatesto-classifier
Description: "A classifier of the target artifact in a relatesTo element."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Composition.relatesTo"
* ^context.expression = "Citation.relatesTo"
* ^context.expression = "Evdence.relatesTo"
* ^context.expression = "EvidenceVariable.relatesTo"
* ^context.expression = "ArtifactAssessment.relatesTo"
* ^context.expression = "ResearchStudy.relatesTo"
* value[x] only CodeableConcept
* . ^short = "A classifier of the target artifact in a relatesTo element"
* . ^definition = "A classifier of the target artifact in a relatesTo element."