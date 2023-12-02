Profile: NetEffectContribution
Parent: ComparativeEvidence
Id: net-effect-contribution
Description: "Profile of Evidence for Evidence Based Medicine IG. The NetEffectContribution Profile is used for evidence in which the effect estimates, expressed as risk differences, is multiplied by a relative importance rating of the outcomes."
* relatedArtifact 1..*
* relatedArtifact ^slicing.discriminator.type = #value
* relatedArtifact ^slicing.discriminator.path = "type"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains amendedWith 1..* MS
* relatedArtifact[amendedWith].type = #amended-with
* relatedArtifact[amendedWith]
  * resourceReference only Reference(OutcomeImportance)
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "extension.valueCode"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains covariate 1..*
* variableDefinition[covariate]
  * extension[VariableDefinitionVariableRoleCode].valueCode = #covariate
  * extension[VariableDefinitionRoleSubtype].valueCodeableConcept.text = "Relative Value Multiplier"
  * observed.display = "Relative Importance Multiplier"
  * intended 0..0
* statistic 1..*
* statistic ^slicing.discriminator.type = #value
* statistic ^slicing.discriminator.path = "statisticType"
* statistic ^slicing.rules = #open
* statistic contains netEffect 1..1 MS
* statistic[netEffect].statisticType = https://fevir.net/resources/CodeSystem/27270#STATO:0000424 "Risk Difference"
* statistic[netEffect]
  * attributeEstimate ^slicing.discriminator.type = #value
  * attributeEstimate ^slicing.discriminator.path = "type"
  * attributeEstimate ^slicing.rules = #open
  * attributeEstimate contains confidenceInterval 1..1 MS
  * attributeEstimate[confidenceInterval].type = https://fevir.net/resources/CodeSystem/27270#TBD:0000059 "Confidence interval"
  * modelCharacteristic 1..*
  * modelCharacteristic ^slicing.discriminator.type = #value
  * modelCharacteristic ^slicing.discriminator.path = "code.coding"
  * modelCharacteristic ^slicing.rules = #open
  * modelCharacteristic contains netEffectContributionAnalysis 1..1 MS
  * modelCharacteristic[netEffectContributionAnalysis].code.coding = https://fevir.net/resources/CodeSystem/27270#TBD:net-effect-contribution-analysis "Net effect contribution analysis"
  