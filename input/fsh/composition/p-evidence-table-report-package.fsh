Profile: EvidenceTableReportPackage
Parent: EvidenceReport
Id: evidence-table-report-package
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceTableReportPackage Profile is used for a base structure to extend the EvidenceReport Profile with sections for Groups (Screened Group, Selected Group, Population Definition, Intervention Group, Intervention Definition, Comparator Group, and Comparator Definition). Group Assignment, Evidence Variables, and Results."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains groups 0..1 MS and groupAssignment 0..* MS and variables 0..1 MS and results 0..1 MS
* section[groups].code.coding 1..1
* section[groups].code.coding = https://fevir.net/resources/CodeSystem/179423#groups "Groups"
* section[groups]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains screenedGroup 0..1 and selectedGroup 0..1 MS and populationDefinition 0..1 and interventionGroup 0..* MS and comparatorGroup 0..* MS and interventionDescription 0..* and comparatorDescription 0..*
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
* section[results]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains screenedToSelected 0..1 MS and comparativeResults 0..* MS
  * section[screenedToSelected].code.coding 1..1
  * section[screenedToSelected].code.coding = https://fevir.net/resources/CodeSystem/179423#screened-to-selected-results "Screened to Selected Results"
  * section[screenedToSelected]
    * focus only Reference(GroupAssignment)
    * section
      * focus only Reference(VariableDefinition)
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.coding"
      * section ^slicing.rules = #open
      * section contains screenedEvidence 0..1 MS and selectedEvidence 0..1 MS and comparativeEvidence 0..1 MS
      * section[screenedEvidence].code.coding 1..1
      * section[screenedEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-for-screened-group "Evidence for Screened Group"
      * section[screenedEvidence]
        * entry 0..1 
        * entry only Reference(NonComparativeEvidence)
      * section[selectedEvidence].code.coding 1..1
      * section[selectedEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-for-selected-group "Evidence for Selected Group"
      * section[selectedEvidence]
        * entry 0..1 
        * entry only Reference(NonComparativeEvidence)
      * section[comparativeEvidence].code.coding 1..1
      * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-for-screened-vs-selected "Evidence for Screened Group vs. Selected Group"
      * section[comparativeEvidence]
        * entry 0..1 
        * entry only Reference(ComparativeEvidence)   
  * section[comparativeResults].code.coding 1..1
  * section[comparativeResults].code.coding = https://fevir.net/resources/CodeSystem/179423#comparative-results "Comparative Results"
  * section[comparativeResults]
    * focus only Reference(GroupAssignment)
    * section 1..*
      * focus only Reference(VariableDefinition)
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.coding"
      * section ^slicing.rules = #open
      * section contains comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and selectedGroupEvidence 0..1 MS and comparativeEvidence 0..1 MS
      * section[comparatorEvidence].code.coding 1..1
      * section[comparatorEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-comparator-alone "Evidence with comparator alone"
      * section[comparatorEvidence]
        * entry 0..1 
        * entry only Reference(NonComparativeEvidence)
      * section[interventionEvidence].code.coding 1..1
      * section[interventionEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-alone "Evidence with intervention alone"
      * section[interventionEvidence]
        * entry 0..1 
        * entry only Reference(NonComparativeEvidence)
      * section[selectedGroupEvidence].code.coding 1..1
      * section[selectedGroupEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-selected-group "Evidence with selected group"
      * section[selectedGroupEvidence]
        * entry 0..1 
        * entry only Reference(NonComparativeEvidence)
      * section[comparativeEvidence].code.coding 1..1
      * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-vs-comparator "Evidence with intervention vs. comparator"
      * section[comparativeEvidence]
        * entry 0..1 
        * entry only Reference(ComparativeEvidence)


