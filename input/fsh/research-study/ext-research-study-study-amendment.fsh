Extension: ResearchStudyStudyAmendment
Id: research-study-study-amendment
Description: "An amendment to a study protocol."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] 0..0
* . ^short = "An amendment to a study protocol"
* . ^definition = "An amendment to a study protocol."
* extension contains details 0..1 and scope 0..1 and description 0..1 and rationale 0..1 and substantialImpactSafety 0..1 and substantialImpactSafetyComment 0..1 and substantialImpactReliability 0..1 and substantialImpactReliabilityComment 0..1 and primaryReason 0..1
* extension[details].value[x] only string
  * ^short = "Statement regarding prior amendments"
  * ^definition = "Statement regarding prior amendments."
  * ^comment = "State {Not applicable. This protocol has not been amended.} or state {This protocol has been amended previously. Details of prior amendments are presented in Prior Protocol Amendment(s).} or include Current Amendment details as appropriate (See instructions)."
* extension[scope].value[x] only string
  * ^short = "Global, Coutnry, Region, or Site"
  * ^definition = "Global, Coutnry, Region, or Site."
  * ^comment = "If an amendment applies to all sites in the trial, enter “global” and delete the Country, Region and Site Identifier fields. If amending a single-country study, enter “global”. If the amendment does not apply to all sites in the trial, select “Not Global” and utilize one of the identifiers based on amendment scope. Use the ISO-3166 region or country identifier (for example, DE or EU)."
* extension[description].value[x] only string
  * ^short = "Description"
  * ^definition = "Description."
* extension[rationale].value[x] only string
  * ^short = "Rationale"
  * ^definition = "Rationale."
* extension[substantialImpactSafety].value[x] only boolean
  * ^short = "Substantial impact on safety"
  * ^definition = "Substantial impact on safety."
* extension[substantialImpactSafetyComment].value[x] only string
  * ^short = "Comment on substantial impact on safety"
  * ^definition = "Comment on substantial impact on safety."
* extension[substantialImpactReliability].value[x] only boolean
  * ^short = "Substantial impact on reliability"
  * ^definition = "Substantial impact on reliability."
* extension[substantialImpactReliabilityComment].value[x] only string
  * ^short = "Comment on substantial impact on reliability"
  * ^definition = "Comment on substantial impact on reliability."
* extension[primaryReason].value[x] only CodeableConcept
  * ^short = "Reason for amendment, e.g. Safety"
  * ^definition = "Reason for amendment, e.g. Safety."