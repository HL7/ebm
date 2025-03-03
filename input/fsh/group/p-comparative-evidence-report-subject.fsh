Profile: ComparativeEvidenceReportSubject
Parent: EvidenceReportSubject
Id: comparative-evidence-report-subject
Description: "Profile of Group for Evidence Based Medicine IG. The ComparativeEvidenceReportSubject Profile is used to define the subject of a ComparativeEvidenceReport."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* characteristic[population] 1..1
* characteristic[population].code.text = "Population"
* characteristic[population].valueReference only Reference(StudyGroup)
* characteristic[population].exclude = false
* characteristic[intervention] 1..1
* characteristic[intervention].code.text = "Intervention or Exposure"
* characteristic[intervention].valueReference only Reference(VariableDefinition or ConceptualExposureDefinition)
* characteristic[intervention].exclude = false
* characteristic[comparator] 1..1
* characteristic[comparator].code.text = "Comparator"
* characteristic[comparator].valueReference only Reference(VariableDefinition or ConceptualExposureDefinition or ConceptualComparatorDefinition)
* characteristic[comparator].exclude = false
* characteristic[outcomes] 1..1
* characteristic[outcomes].code.text = "Outcomes"
* characteristic[outcomes].valueReference only Reference(OutcomeList)
* characteristic[outcomes].exclude = false