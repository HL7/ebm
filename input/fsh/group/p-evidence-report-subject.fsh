Profile: EvidenceReportSubject
Parent: CohortDefinition
Id: evidence-report-subject
Description: "Profile of Group for Evidence Based Medicine IG. The EvidenceReportSubject Profile is used to define the subject of an EvidenceReport."
* membership = #conceptual
* code.text = "Evidence Report Subject"
* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic contains population 1..1 MS and intervention 1..1 MS and comparator 1..1 MS and outcomes 1..1 MS
* characteristic[population].code.text = "Population"
* characteristic[population].valueReference only Reference(StudyGroup)
* characteristic[population].exclude = false
* characteristic[intervention].code.text = "Intervention or Exposure"
* characteristic[intervention].valueReference only Reference(ExposureVariable)
* characteristic[intervention].exclude = false
* characteristic[comparator].code.text = "Comparator"
* characteristic[comparator].valueReference only Reference(ExposureVariable)
* characteristic[comparator].exclude = false
* characteristic[outcomes].code.text = "Outcomes"
* characteristic[outcomes].valueReference only Reference(OutcomeList)
* characteristic[outcomes].exclude = false