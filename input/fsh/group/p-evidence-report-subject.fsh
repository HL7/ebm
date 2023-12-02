Profile: EvidenceReportSubject
Parent: CohortDefinition
Id: evidence-report-subject
Description: "Profile of Group for Evidence Based Medicine IG. The EvidenceReportSubject Profile is used to define the subject of an EvidenceReport."
* extension[CombinationMethod]
  * valueCode = #all-of
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "code.text"
* characteristic ^slicing.rules = #open
* characteristic contains population 0..1 MS and intervention 0..1 MS and comparator 0..1 MS and outcomes 0..1 MS
* characteristic[population].code.text = "Population"
* characteristic[population].valueReference only Reference(Group)
* characteristic[population].exclude = false
* characteristic[intervention].code.text = "Intervention or Exposure"
* characteristic[intervention].valueReference only Reference(EvidenceVariable or Group)
* characteristic[intervention].exclude = false
* characteristic[comparator].code.text = "Comparator"
* characteristic[comparator].valueReference only Reference(EvidenceVariable or Group)
* characteristic[comparator].exclude = false
* characteristic[outcomes].code.text = "Outcomes"
* characteristic[outcomes].valueReference only Reference(OutcomeList)
* characteristic[outcomes].exclude = false