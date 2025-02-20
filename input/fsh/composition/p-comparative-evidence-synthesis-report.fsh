Profile: ComparativeEvidenceSynthesisReport
Parent: EvidenceReportPackage
Id: comparative-evidence-synthesis-report
Description: "Profile of Composition for Evidence Based Medicine IG. The ComparativeEvidenceSynthesisReport Profile is used for an evidence report including the intended population, intended exposure, intended comparator, and findings for any number of outcomes comparing the exposure to the comparator with observed study group, observed exposure group, and observed comparator group unique for each outcome."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#ComparativeEvidenceSynthesisReport "ComparativeEvidenceSynthesisReport"
* type.text = "Comparative Evidence Synthesis Report"
* relatesTo[dependsOn]
  * ^comment = "Use targetReference(GroupAssignment) to include GroupAssignment references not directly included in the section entries, to facilitate data exchange for construction of OutcomeMeasureReport and SummaryOfFindings."
.resourceReference only Reference(GroupAssignment)
* section 5..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains population 1..1 MS and intervention 1..* MS and comparator 1..1 MS and researchStudy 1..1 MS and outcomeVariables 0..1 and results 0..1 MS and summaryOfFindings 0..1 MS
* section[population].code.coding 1..1
* section[population].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
* section[population]
  * entry only Reference(CohortDefinition or ConceptualCohortDefinition)
* section[intervention].code.coding 1..1
* section[intervention].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-description "Intervention Description"
* section[intervention]
  * entry only Reference(CohortDefinition or ConceptualCohortDefinition)
* section[comparator].code.coding 1..1
* section[comparator].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-description "Comparator Description"
* section[comparator]
  * entry only Reference(CohortDefinition or ConceptualCohortDefinition)
* section[researchStudy].code.coding 1..1
* section[researchStudy].code.coding = https://fevir.net/resources/CodeSystem/179423#research-study "Research Study"
* section[researchStudy]
  * entry only Reference(ResearchStudy or Citation or Composition)
* section[outcomeVariables].code.coding 1..1
* section[outcomeVariables].code.coding = https://fevir.net/resources/CodeSystem/179423#variables "Variables"
* section[outcomeVariables]
  * entry 0..*
  * entry only Reference(VariableDefinition or OutcomeVariablesList or VariablesList)
* section[results].code.coding 1..1
* section[results].code.coding = https://fevir.net/resources/CodeSystem/179423#results "Results"
* section[results]
  * entry 0..*
  * entry only Reference(OutcomeMeasureReport)
* section[summaryOfFindings].code.coding 1..1
* section[summaryOfFindings].code.coding = https://fevir.net/resources/CodeSystem/179423#summary-of-findings "Summary of Findings"
* section[summaryOfFindings]
  * entry 0..*
  * entry only Reference(SummaryOfFindings)
