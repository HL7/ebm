Profile: EvidenceTableReportPackage
Parent: EvidenceReport
Id: evidence-table-report-package
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceTableReportPackage Profile is used for a base structure to extend the EvidenceReport Profile with Results sections where each results section instance has a focus on a measured variable and a reproducible structure to represent evidence about that measured variable for different groups."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains results 1..* MS
* section[results].code.coding 1..1
* section[results].code.coding = https://fevir.net/resources/CodeSystem/179423#results "Results"
* section[results]
  * focus only Reference(VariableDefinition)
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains screenedEvidence 0..* MS and enrolledEvidence 0..* MS and analyzedEvidence 0..* MS and interventionEvidence 0..* MS and comparatorEvidence 0..* MS and comparativeEvidence 0..* MS
    * section[screenedEvidence].code.coding 1..1
    * section[screenedEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-for-screened-group "Evidence for Screened Group"
    * section[screenedEvidence]
      * entry only Reference(NonComparativeEvidence)
    * section[enrolledEvidence].code.coding 1..1
    * section[enrolledEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-for-enrolled-group "Evidence for Enrolled Group"
    * section[enrolledEvidence]
      * entry only Reference(NonComparativeEvidence)
    * section[analyzedEvidence].code.coding 1..1
    * section[analyzedEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-for-analyzed-group "Evidence for Analyzed Group"
    * section[analyzedEvidence]
      * entry only Reference(NonComparativeEvidence)
    * section[interventionEvidence].code.coding 1..1
    * section[interventionEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-alone "Evidence with intervention alone"
    * section[interventionEvidence]
      * entry only Reference(NonComparativeEvidence)
    * section[comparatorEvidence].code.coding 1..1
    * section[comparatorEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-comparator-alone "Evidence with comparator alone"
    * section[comparatorEvidence]
      * entry only Reference(NonComparativeEvidence)
    * section[comparativeEvidence].code.coding 1..1
    * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-vs-comparator "Evidence with intervention vs. comparator"
    * section[comparativeEvidence]
        * focus only Reference(GroupAssignment)
        * entry only Reference(ComparativeEvidence)


