Extension: RelatesToClassifier
Id: relatesto-classifier
Description: "A classifier of the target artifact in a relatesTo element."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context[0].type = #element
* ^context[0].expression = "Composition.relatesTo"
* ^context[1].type = #element
* ^context[1].expression = "Citation.relatesTo"
* ^context[2].type = #element
* ^context[2].expression = "Evdence.relatesTo"
* ^context[3].type = #element
* ^context[3].expression = "EvidenceVariable.relatesTo"
* ^context[4].type = #element
* ^context[4].expression = "ArtifactAssessment.relatesTo"
* ^context[5].type = #element
* ^context[5].expression = "ResearchStudy.relatesTo"
* value[x] only CodeableConcept
* . ^short = "A classifier of the target artifact in a relatesTo element"
* . ^definition = "A classifier of the target artifact in a relatesTo element."