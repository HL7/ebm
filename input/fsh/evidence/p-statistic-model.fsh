Profile: StatisticModel
Parent: Evidence
Id: statistic-model
Description: "Profile of Evidence for Evidence Based Medicine IG. The StatisticModel Profile is used to add extensions to Evidence for complex expressions for the statistical model or endpoint analysis plan." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains RelatesToWithQuotation named RelatesToWithQuotation 0..*
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* statistic
  * extension contains StatisticModelExpression named modelExpression 0..1
* statistic.modelCharacteristic
  * extension contains StatisticModelIncludeIf named includeIf 0..1
* statistic.modelCharacteristic.variable
  * extension contains StatisticModelIncludeIf named includeIf 0..1

