Extension: CiteAs
Id: cite-as
Description: "Citation for this Resource."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context[0].type = #element
* ^context[0].expression = "Evidence"
* ^context[1].type = #element
* ^context[1].expression = "EvidenceVariable"
* ^context[2].type = #element
* ^context[2].expression = "ResearchStudy"
* ^context[3].type = #element
* ^context[3].expression = "ArtifactAssessment"
* ^context[4].type = #element
* ^context[4].expression = "Group"
* ^context[5].type = #element
* ^context[5].expression = "CodeSystem"
* ^context[6].type = #element
* ^context[6].expression = "ValueSet"
* value[x] only markdown
* . ^short = "Citation for this Resource"
* . ^definition = "Display of suggested citation for this Resource."