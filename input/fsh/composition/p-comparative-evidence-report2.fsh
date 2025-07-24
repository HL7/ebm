Profile: ComparativeEvidenceReport2
Parent: EvidenceReportPackage
Id: comparative-evidence-report2
Description: "Profile of Composition for Evidence Based Medicine IG. The ComparativeEvidenceReport Profile is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#ComparativeEvidenceReport "ComparativeEvidenceReport"
* type.text = "Comparative Evidence Report"
* section 5..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains researchStudy 1..1 MS and studySample 1..1 MS and interventionGroup 1..* MS and comparatorGroup 1..1 MS and outcomeVariables 0..1 MS and outcomeFindings 0..1 MS and summaryOfFindings 0..1 MS
* section[researchStudy].code.coding 1..1
* section[researchStudy].code.coding = https://fevir.net/resources/CodeSystem/179423#research-study "Research Study"
* section[researchStudy]
  * entry only Reference(ResearchStudy or Citation or Composition)
* section[studySample].code.coding 1..1
* section[studySample].code.coding = https://fevir.net/resources/CodeSystem/179423#study-sample "Study Sample"
* section[studySample]
  * entry only Reference(StudyGroup)
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains definition 0..1 MS
  * section[definition].code.coding 1..1
  * section[definition].code.coding = https://fevir.net/resources/CodeSystem/179423#eligibility-criteria "Eligibility Criteria"
  * section[definition]
    * entry only Reference(StudyEligibilityCriteria)
* section[interventionGroup].code.coding 1..1
* section[interventionGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-group "Intervention Group"
* section[interventionGroup]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains description 0..1
  * section[description].code.coding 1..1
  * section[description].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-description "Intervention Description"
  * section[description]
    * entry 0..1
    * entry only Reference(ConceptualExposureDefinition or PlanDefinition or ActivityDefinition)
* section[comparatorGroup].code.coding 1..1
* section[comparatorGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-group "Comparator Group"
* section[comparatorGroup]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains description 0..1 and groupAssignment 0..1
  * section[description].code.coding 1..1
  * section[description].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-description "Comparator Description"
  * section[description]
    * entry 0..1
    * entry only Reference(ConceptualComparatorDefinition or ConceptualExposureDefinition or PlanDefinition or ActivityDefinition)
  * section[groupAssignment].code.coding 1..1
  * section[groupAssignment].code.coding = https://fevir.net/resources/CodeSystem/179423#GroupAssignment "GroupAssignment"
  * section[groupAssignment]
    * entry only Reference(GroupAssignment)
* section[outcomeVariables].code.coding 1..1
* section[outcomeVariables].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-measures "Outcome Measures"
* section[outcomeVariables]
  * entry only Reference(VariableDefinition or OutcomeVariablesList)
* section[outcomeFindings].code.coding 1..1
* section[outcomeFindings].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-findings "Outcome Findings"
* section[outcomeFindings]
  * entry only Reference(OutcomeMeasureReport)
* section[summaryOfFindings].code.coding 1..1
* section[summaryOfFindings].code.coding = https://fevir.net/resources/CodeSystem/179423#summary-of-findings "Summary of Findings"
* section[summaryOfFindings]
  * entry only Reference(SummaryOfFindings)