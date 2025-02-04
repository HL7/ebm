Profile: EvidenceSynthesisTableReportPackage
Parent: EvidenceTableReportPackage
Id: evidence-synthesis-table-report-package
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceSynthesisTableReportPackage Profile is used for a base structure to extend the EvidenceTableReportPackage Profile (with Results sections where each results section instance has a focus on a measured variable and a reproducible structure to represent evidence about that measured variable for different groups) and extend each results section instance to include sections for the groups (population, intervention, and comparator). In an evidence synthesis, each outcome may be assessed in a different group from other outcomes."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* section[results]
  * section contains populationGroup 0..* MS and interventionGroup 0..* MS and comparatorGroup 0..* MS
  * section[populationGroup].code.coding 1..1
  * section[populationGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
  * section[populationGroup]
    * entry only Reference(Group)
  * section[interventionGroup].code.coding 1..1
  * section[interventionGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-group "Intervention Group"
  * section[interventionGroup]
    * entry only Reference(Group)
  * section[comparatorGroup].code.coding 1..1
  * section[comparatorGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-group "Comparator Group"
  * section[comparatorGroup]
    * entry only Reference(ComparatorGroup or ExposureGroup)