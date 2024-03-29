Profile: EndpointAnalysisPlan
Parent: EvidenceR6
Id: endpoint-analysis-plan
Description: "Profile of Evidence for Evidence Based Medicine IG. The EndpointAnalysisPlan Profile is used for specification of the statistical model for analysis of a single endpoint." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* statistic.modelCharacteristic 1..*
  * ^comment = "After the Evidence StructureDefinition is revised, set intended 0..1 boolean to value of True."
  * extension[intended].valueBoolean = true
