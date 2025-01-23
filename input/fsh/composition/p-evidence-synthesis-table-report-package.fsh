Profile: EvidenceSynthesisTableReportPackage
Parent: EvidenceReport
Id: evidence-synthesis-table-report-package
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceSynthesisTableReportPackage Profile is used for a base structure to extend the EvidenceReport Profile with sections for Groups (Total Group, Intervention Group, Comparator Group, and Group Assignment; which reference conceptual or definitional Groups), Evidence Variables, and Results."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains groups 0..1 MS and variables 0..1 MS and results 0..1 MS
* section[groups].code.coding 1..1
* section[groups].code.coding = https://fevir.net/resources/CodeSystem/179423#groups "Groups"
* section[groups]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains totalGroup 0..1 MS and interventionGroup 0..1 MS and comparatorGroup 0..1 MS and groupAssignment 0..1
  * section[totalGroup].code.coding 1..1
  * section[totalGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
  * section[totalGroup]
    * entry only Reference(CohortDefinition or ConceptualCohortDefinition)
  * section[interventionGroup].code.coding 1..1
  * section[interventionGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-group "Intervention Group"
  * section[interventionGroup]
    * entry only Reference(CohortDefinition or ConceptualCohortDefinition)
  * section[comparatorGroup].code.coding 1..1
  * section[comparatorGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-group "Comparator Group"
  * section[comparatorGroup]
    * entry only Reference(CohortDefinition or ConceptualCohortDefinition)
  * section[groupAssignment].code.coding 1..1
  * section[groupAssignment].code.coding = https://fevir.net/resources/CodeSystem/179423#GroupAssignment "GroupAssignment"
  * section[groupAssignment]
    * entry only Reference(GroupAssignment)
* section[variables].code.coding 1..1
* section[variables].code.coding = https://fevir.net/resources/CodeSystem/179423#variables "Variables"
* section[variables]
  * entry only Reference(VariableDefinition)
* section[results].code.coding 1..1
* section[results].code.coding = https://fevir.net/resources/CodeSystem/179423#results "Results"
