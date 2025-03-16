Profile: NetEffectContribution
Parent: ComparativeEvidence
Id: net-effect-contribution
Description: "Profile of Evidence for Evidence Based Medicine IG. The NetEffectContribution Profile is used for evidence in which the effect estimates, expressed as risk differences, is multiplied by a relative importance rating of the outcomes."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains AmendedWithImportance named amendedWithImportance 1..1
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains covariate 1..*
* variableDefinition[covariate]
  * variableRole = #covariate
  * roleSubtype.text = "Relative Value Multiplier"
  * observed.display = "Relative Importance Multiplier"
  * intended 0..0
* statistic 1..*
* statistic ^slicing.discriminator.type = #value
* statistic ^slicing.discriminator.path = "statisticType.coding"
* statistic ^slicing.rules = #open
* statistic contains netEffect 1..1 MS
* statistic[netEffect].statisticType.coding 1..1
* statistic[netEffect].statisticType.coding = https://fevir.net/sevco#STATO:0000424 "risk difference"
* statistic[netEffect]
  * attributeEstimate ^slicing.discriminator.type = #value
  * attributeEstimate ^slicing.discriminator.path = "type.coding"
  * attributeEstimate ^slicing.rules = #open
  * attributeEstimate contains confidenceInterval 1..1 MS
  * attributeEstimate[confidenceInterval].type.coding 1..1
  * attributeEstimate[confidenceInterval].type.coding = https://fevir.net/sevco#STATO:0000196 "confidence interval"
  * modelCharacteristic 1..*
  * modelCharacteristic ^slicing.discriminator.type = #value
  * modelCharacteristic ^slicing.discriminator.path = "code.text"
  * modelCharacteristic ^slicing.rules = #open
  * modelCharacteristic contains netEffectContributionAnalysis 1..1 MS
  * modelCharacteristic[netEffectContributionAnalysis].code.text = "Net effect contribution analysis"
  