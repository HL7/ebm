Extension: ResearchStudyM11ProtocolAmendment
Id: research-study-m11-protocol-amendment
Description: "An amendment to a study protocol matching M11 template."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] 0..0
* . ^short = "An amendment to a study protocol"
* . ^definition = "An amendment to a study protocol."
* extension contains identifier 1..1 and previous 0..1 and scope 1..1 and country 0..* and region 0..* and site 0..* and approvalDate 0..1 and signature 0..1 and signatureUrl 0..1 and signatureMethod 0..1 and M11AmendmentScopeImpact named scopeImpact 0..3 and primaryReason 0..1 and secondaryReason 0..* and summary 0..1 and substantialImpactSafety 0..1 and substantialImpactSafetyComment 0..1 and substantialImpactReliability 0..1 and substantialImpactReliabilityComment 0..1 and M11AmendmentDetail named details 0..* and rationale 0..1 and description 0..1
* extension[identifier].value[x] only Identifier
  * ^short = "Amendment identifier"
  * ^definition = "Amendment identifier."
* extension[previous].value[x] only CodeableConcept
  * ^short = "Statement regarding prior amendments"
  * ^definition = "Statement regarding prior amendments."
  * ^comment = "State {Not applicable. This protocol has not been amended.} or state {This protocol has been amended previously. Details of prior amendments are presented in Prior Protocol Amendment(s).} or include Current Amendment details as appropriate (See instructions)."
* extension[previous].valueCodeableConcept from ICHM11AmendmentDetailsStatement (required)
* extension[scope].value[x] only CodeableConcept
  * ^short = "Global or Not Global"
  * ^definition = "Global or Not Global (Country, Region, or Site)."
* extension[scope].valueCodeableConcept from ICHM11AmendmentScope (required)
* extension[country].value[x] only CodeableConcept
  * ^short = "Country"
  * ^definition = "Country."
  * ^comment = "Codes drawn from ISO 3166 Country Codes, Alpha 3; ISO 3166 Country Codes, Alpha 2; country/region codes. ICH M11 Study Amendment Country Value Set posted at https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-m11-country-region-vs.html."
* extension[region].value[x] only CodeableConcept
  * ^short = "Region"
  * ^definition = "Region."
  * ^comment = "Codes drawn from ISO 3166 Country Codes, Alpha 3; ISO 3166 Country Codes, Alpha 2; country/region codes. ICH M11 Study Amendment Country Value Set posted at https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-m11-country-region-vs.html."
* extension[site].value[x] only Identifier or Reference
  * ^short = "Site"
  * ^definition = "Site."
* extension[approvalDate].value[x] only date
  * ^short = "Approval date"
  * ^definition = "Approval date."
* extension[signature].value[x] only Signature
  * ^short = "Signature"
  * ^definition = "Signature."
* extension[signatureUrl].value[x] only string or url
  * ^short = "Signature URL"
  * ^definition = "Signature URL."
* extension[signatureMethod].value[x] only string
  * ^short = "Signature Method"
  * ^definition = "Signature Method."
* extension[primaryReason].value[x] only CodeableConcept
  * ^short = "Reason for amendment, e.g. Safety"
  * ^definition = "Reason for amendment, e.g. Safety."
* extension[primaryReason].valueCodeableConcept from ICHM11AmendmentReason (extensible)
* extension[secondaryReason].value[x] only CodeableConcept
  * ^short = "Reason for amendment, e.g. Safety"
  * ^definition = "Reason for amendment, e.g. Safety."
* extension[secondaryReason].valueCodeableConcept from ICHM11AmendmentReason (extensible)
* extension[summary].value[x] only string
  * ^short = "Summary of changes"
  * ^definition = "Summary of changes."
* extension[substantialImpactSafety].value[x] only CodeableConcept
  * ^short = "Substantial impact on safety"
  * ^definition = "Substantial impact on safety."
* extension[substantialImpactSafety].valueCodeableConcept from ICHM11YesNo (required)
* extension[substantialImpactSafetyComment].value[x] only string
  * ^short = "Comment on substantial impact on safety"
  * ^definition = "Comment on substantial impact on safety."
* extension[substantialImpactReliability].value[x] only CodeableConcept
  * ^short = "Substantial impact on reliability"
  * ^definition = "Substantial impact on reliability."
* extension[substantialImpactReliability].valueCodeableConcept from ICHM11YesNo (required)
* extension[substantialImpactReliabilityComment].value[x] only string
  * ^short = "Comment on substantial impact on reliability"
  * ^definition = "Comment on substantial impact on reliability."
* extension[rationale].value[x] only string
  * ^short = "Rationale"
  * ^definition = "Rationale."
* extension[description].value[x] only string or markdown
  * ^short = "Description"
  * ^definition = "Description."