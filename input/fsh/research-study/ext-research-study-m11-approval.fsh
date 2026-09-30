Extension: ResearchStudyM11Approval
Id: research-study-m11-approval
Description: "Approval and sign off for an M11 CeSHarP digital protocol."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] 0..0
* . ^short = "Approval and sign off"
* . ^definition = "Approval and sign off."
* extension contains approvalDate 0..1 and signature 0..1 and signatureUrl 0..1 and signatureMethod 0..1
* extension[approvalDate].value[x] only date
  * ^short = "Date of approval"
  * ^definition = "Date of approval."
* extension[signature].value[x] only Signature
  * ^short = "Signature"
  * ^definition = "Signature."
* extension[signatureUrl].value[x] only string
  * ^short = "Signature URL"
  * ^definition = "Signature URL."
* extension[signatureMethod].value[x] only string
  * ^short = "Signature method"
  * ^definition = "Signature method."
