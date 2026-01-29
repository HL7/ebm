Extension: RelatesToWithQuotation
Id: relates-to-with-quotation
Description: "Specification of a portion quoted from the related artifact."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context[0].type = #element
* ^context[0].expression = "Evidence.relatesTo"
* ^context[1].type = #element
* ^context[1].expression = "EvidenceVariable.relatesTo"
* ^context[2].type = #element
* ^context[2].expression = "Citation.relatesTo"
* ^context[3].type = #element
* ^context[3].expression = "ArtifactAssessment.relatesTo"
* ^context[4].type = #element
* ^context[4].expression = "ArtifactAssessment.content.relatesTo"
* ^context[5].type = #element
* ^context[5].expression = "ArtifactAssessment.content.component.relatesTo"
* ^context[6].type = #element
* ^context[6].expression = "ResearchStudy.relatesTo"
* value[x] only markdown
* . ^short = "Quoted portion from related artifact"
* . ^definition = "Specification of a portion quoted from the related artifact."
