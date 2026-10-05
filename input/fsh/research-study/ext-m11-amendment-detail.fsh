Extension: M11AmendmentDetail
Id: m11-amendment-detail
Description: "Provides detail of a single change within an amendment."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudyM11ProtocolAmendment"
* value[x] 0..0
* . ^short = "Provides detail of a single change within an amendment"
* . ^definition = "Provides detail of a single change within an amendment."
* extension contains detail 1..1 and rationale 1..1 and section 1..1
* extension[detail].value[x]
  * ^short = "Detail"
  * ^definition = "Detail of change."
* extension[rationale].value[x] only string
  * ^short = "Rationale"
  * ^definition = "Rationale for change."
* extension[section].value[x] only CodeableConcept
  * ^short = "Section where the amendment was made"
  * ^definition = "Section where the amendment was made."
* extension[section].valueCodeableConcept from LimitedM11SectionCodes (required)