Profile: NetEffectEstimate
Parent: ComparativeEvidence
Id: net-effect-estimate
Description: "Profile of Evidence for Evidence Based Medicine IG. The NetEffectEstimate Profile is used for evidence in which the observed data is comparative evidence (effect estimates expressed as risk differences) and relative importance ratings of outcomes."
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains netEffect 1..* MS
* useContext[netEffect].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[netEffect].code.code = #program
* useContext[netEffect].code.display = "Program"
* useContext[netEffect].valueCodeableConcept.text = "net-effect-estimate"
* variableDefinition 4..*
* variableDefinition[outcome] //TODO add roleSubtype when available
  // * roleSubtype 1..1 //TODO choices for roleSubtype to include "Effect estimate (risk difference) for an outcome" and "Relative importance for an outcome"
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
  * modelCharacteristic ^slicing.discriminator.path = "code"
  * modelCharacteristic ^slicing.rules = #open
  * modelCharacteristic contains netEffectAnalysis 1..1 MS
  * modelCharacteristic[netEffectAnalysis].code = https://fevir.net/resources/CodeSystem/27270#TBD:net-effect-analysis "Net effect analysis"
  