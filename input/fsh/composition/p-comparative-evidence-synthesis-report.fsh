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
* section contains population 1..1 MS and intervention 1..* MS and comparator 1..1 MS and researchStudy 1..1 MS and results 1..1 MS
* section[population].code.coding 1..1
* section[population].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
* section[population]
  * entry only Reference(CohortDefinition)
* section[intervention].code.coding 1..1
* section[intervention].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-description "Intervention Description"
* section[intervention]
  * entry only Reference(CohortDefinition)
* section[comparator].code.coding 1..1
* section[comparator].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-description "Comparator Description"
* section[comparator]
  * entry only Reference(CohortDefinition)
* section[researchStudy].code.coding 1..1
* section[researchStudy].code.coding = https://fevir.net/resources/CodeSystem/179423#research-study "Research Study"
* section[researchStudy]
  * entry only Reference(ResearchStudy or Citation or Composition)
* section[results].code.coding 1..1
* section[results].code.coding = https://fevir.net/resources/CodeSystem/179423#summary-of-findings "Summary of Findings"
* section[results]
  * section 1..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains result 1..* MS
  * section[result].code.coding 1..1
  * section[result].code.coding = https://fevir.net/resources/CodeSystem/179423#summary-of-findings-entry-for-a-single-outcome "Summary of findings entry for a single outcome"
  * section[result]
    * focus 1..1
    * focus only Reference(VariableDefinition)
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.coding"
    * section ^slicing.rules = #open
    * section contains population 0..1 MS and intervention 0..1 MS and comparator 0..1 MS and comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and interventionEvidenceCalculated 0..1 MS and comparativeEvidence 0..1 MS
    * section[population].code.coding 1..1
    * section[population].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
    * section[population]
      * entry only Reference(Group)
    * section[intervention].code.coding 1..1
    * section[intervention].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-group "Intervention Group"
    * section[intervention]
      * entry only Reference(ExposureGroup or ComparatorGroup)
    * section[comparator].code.coding 1..1
    * section[comparator].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-group "Comparator Group"
    * section[comparator]
      * entry only Reference(ComparatorGroup or ExposureGroup)
    * section[comparatorEvidence].code.coding 1..1
    * section[comparatorEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-comparator-alone "Result with comparator alone"
    * section[comparatorEvidence]
      * entry only Reference(NonComparativeEvidence)
    * section[interventionEvidence].code.coding 1..1
    * section[interventionEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone "Result with intervention alone"
    * section[interventionEvidence]
      * entry only Reference(NonComparativeEvidence)
    * section[interventionEvidenceCalculated].code.coding 1..1
    * section[interventionEvidenceCalculated].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone-calculated "Result with intervention alone (calculated)"
    * section[interventionEvidenceCalculated]
      * entry only Reference(NonComparativeEvidence or ComparativeEvidence)
    * section[comparativeEvidence].code.coding 1..1
    * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-vs-comparator "Result with intervention vs. comparator"
    * section[comparativeEvidence]
      * entry only Reference(ComparativeEvidence)
   