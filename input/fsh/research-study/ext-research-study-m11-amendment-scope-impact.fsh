Extension: ResearchStudyM11AmendmentScopeImpact
Id: research-study-m11-amendment-scope-impact
Description: "Provides number or percentage of each group affected by a single amendment."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudyM11ProtocolAmendment"
* value[x] 0..0
* . ^short = "Provides number or percentage of each group affected by a single amendment"
* . ^definition = "Provides number or percentage of each group affected by a single amendment."
* extension contains number 1..1 and scope 1..1
* extension[number].value[x] only positiveInt or Quantity
  * ^short = "Number of participants, or % of participants"
  * ^definition = "Number of participants, or % of participants."
* extension[scope].value[x] only CodeableConcept
  * ^short = "Global, Locally, or By Cohort"
  * ^definition = "Global, Locally, or By Cohort."
* extension[scope].valueCodeableConcept from ICHM11AmendmentScopeEnrollment (required)