Profile: ComparativeEvidenceReport
Parent: EvidenceReportPackage
Id: comparative-evidence-report
Description: "Profile of Composition for Evidence Based Medicine IG. The ComparativeEvidenceReport Profile is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#ComparativeEvidenceReport "ComparativeEvidenceReport"
* type.text = "Comparative Evidence Report"
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "label"
* relatesTo ^slicing.rules = #open
* relatesTo contains groupAssignment 0..*
* relatesTo[groupAssignment].type = #composed-of
* relatesTo[groupAssignment].label = "Group Assignment"
* relatesTo[groupAssignment].resourceReference only Reference(GroupAssignment)
* section 5..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains population 1..1 MS and intervention 1..* MS and comparator 1..1 MS and researchStudy 1..1 MS and baseline 0..1 MS and flow 0..1 MS and outcomes 1..1 MS
* section[population].code.coding 1..1
* section[population].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
* section[population]
  * entry only Reference(StudyGroup)
* section[intervention].code.coding 1..1
* section[intervention].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention "Intervention"
* section[intervention]
  * section 2..2
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and group 1..1 MS
  * section[description].code.coding 1..1
  * section[description].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-description "Intervention Description"
  * section[description]
    * entry 0..1
    * entry only Reference(ExposureDefinition)
  * section[group].code.coding 1..1
  * section[group].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-group "Intervention Group"
  * section[group]
    * entry 0..1
    * entry only Reference(ExposureGroup)
* section[comparator].code.coding 1..1
* section[comparator].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator "Comparator"
* section[comparator]
  * section 2..2
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and group 1..1 MS
  * section[description].code.coding 1..1
  * section[description].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-description "Comparator Description"
  * section[description]
    * entry 0..1
    * entry only Reference(ComparatorDefinition or ExposureDefinition)
  * section[group].code.coding 1..1
  * section[group].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-group "Comparator Group"
  * section[group]
    * entry 0..1
    * entry only Reference(ComparatorGroup or ExposureGroup)
* section[researchStudy].code.coding 1..1
* section[researchStudy].code.coding = https://fevir.net/resources/CodeSystem/179423#research-study "Research Study"
* section[researchStudy]
  * entry only Reference(ResearchStudy or Citation or Composition)
* section[baseline].code.coding 1..1
* section[baseline].code.coding = https://fevir.net/resources/CodeSystem/179423#baseline-measures "Baseline Measures"
* section[baseline]
  * entry 0..1 
  * entry only Reference(BaselineMeasureReport)
* section[flow].code.coding 1..1
* section[flow].code.coding = https://fevir.net/resources/CodeSystem/179423#participant-flow "Participant Flow"
* section[flow]
  * entry 0..1 
  * entry only Reference(ParticipantFlowReport)
* section[outcomes].code.coding 1..1
* section[outcomes].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-measures "Outcome Measures"
* section[outcomes]
  * entry 0..*
  * entry only Reference(OutcomeMeasureReport or SummaryOfFindings)