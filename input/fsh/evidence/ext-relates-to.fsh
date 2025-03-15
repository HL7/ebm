Extension: RelatesTo
Id: relates-to
Description: "Resource (FHIR or non-FHIR) associated with the Resource."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context[0].type = #element
* ^context[0].expression = "Evidence"
* ^context[1].type = #element
* ^context[1].expression = "EvidenceVariable"
* ^context[2].type = #element
* ^context[2].expression = "Citation"
* ^context[3].type = #element
* ^context[3].expression = "ArtifactAssessment"
* ^context[4].type = #element
* ^context[4].expression = "ArtifactAssessment.content"
* ^context[5].type = #element
* ^context[5].expression = "ArtifactAssessment.content.component"
* ^context[6].type = #element
* ^context[6].expression = "ResearchStudy"
* ^context[7].type = #element
* ^context[7].expression = "Group"
* value[x] 0..0
* . ^short = "Related artifact"
* . ^definition = "Resource (FHIR or non-FHIR) associated with the Resource."
* extension contains type 1..1 and targetUri 0..1 and targetReference 0..1 and targetCanonical 0..1 and targetAttachment 0..1 and targetMarkdown 0..1
* extension[type].value[x] only code
  * ^short = "documentation | justification | predecessor | successor | derived-from | depends-on | composed-of | part-of | amends | amended-with | appends | appended-with | cites | cited-by | comments-on | comment-in | contains | contained-in | corrects | correction-in | replaces | replaced-with | retracts | retracted-by | signs | similar-to | supports | supported-with | transforms | transformed-into | transformed-with | documents | specification-of | created-with | cite-as | summarizes"
  * ^definition = "The type of relationship to the related artifact."
* extension[targetUri].value[x] only uri
  * ^short = "The URL or URI to the related artifact"
  * ^definition = "The artifact that is related to this Resource, as a URI."
* extension[targetReference].value[x] only Reference
  * ^short = "The Reference to the related artifact"
  * ^definition = "The artifact that is related to this Resource, as a Reference."
* extension[targetCanonical].value[x] only canonical
  * ^short = "The canonical URL or URI to the related artifact"
  * ^definition = "The artifact that is related to this Resource, as a canonical URI."
* extension[targetAttachment].value[x] only Attachment
  * ^short = "The Attachment of the related artifact"
  * ^definition = "The artifact that is related to this Resource, as an Attachment."
* extension[targetMarkdown].value[x] only markdown
  * ^short = "The description of the related artifact"
  * ^definition = "The artifact that is related to this Resource, as a description."
