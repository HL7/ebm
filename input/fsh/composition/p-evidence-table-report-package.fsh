Profile: EvidenceTableReportPackage
Parent: EvidenceReport
Id: evidence-table-report-package
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceTableReportPackage Profile is used for a base structure to extend the EvidenceReport Profile with sections for Groups (Screened Group, Selected Group, Intervention Group, Comparator Group, and Group Assignment), Evidence Variables, and Results. The Groups section also supports descriptive groups (Population Definition, Intervention Definition, Comparator Definition)."
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
  * section contains screenedGroup 0..1 and selectedGroup 0..1 MS and populationDefinition 0..1 and screenedGroup 0..1 MS and interventionGroup 0..* MS and comparatorGroup 0..* MS and interventionDescription 0..* and comparatorDescription and groupAssignment 0..*
  * section[screenedGroup].code.coding 1..1
  * section[screenedGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#screened-group "Screened Group"
  * section[screenedGroup]
    * entry only Reference(StudyGroup)
  * section[selectedGroup].code.coding 1..1
  * section[selectedGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#selected-group "Selected Group"
  * section[selectedGroup]
    * entry only Reference(StudyGroup)
  * section[populationDefinition].code.coding 1..1
  * section[populationDefinition].code.coding = https://fevir.net/resources/CodeSystem/179423#population-definition "Population Definition"
  * section[populationDefinition]
    * entry only Reference(CohortDefinition or ConceptualCohortDefinition)
  * section[interventionGroup].code.coding 1..1
  * section[interventionGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-group "Intervention Group"
  * section[interventionGroup]
    * entry only Reference(ExposureGroup or ComparatorGroup)
  * section[comparatorGroup].code.coding 1..1
  * section[comparatorGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-group "Comparator Group"
  * section[comparatorGroup]
    * entry only Reference(ExposureGroup or ComparatorGroup)
  * section[interventionDescription].code.coding 1..1
  * section[interventionDescription].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-description "Intervention Description"
  * section[interventionDescription]
    * entry only Reference(CohortDefinition or ConceptualCohortDefinition)
  * section[comparatorDescription].code.coding 1..1
  * section[comparatorDescription].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-description "Comparator Description"
  * section[comparatorDescription]
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
