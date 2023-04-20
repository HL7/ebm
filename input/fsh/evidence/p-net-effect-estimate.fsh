Profile: NetEffectEstimate
Parent: ComparativeEvidence
Id: net-effect-estimate
Description: "Profile of Evidence for Evidence Based Medicine IG. The NetEffectEstimate Profile is used for evidence in which the observed data is comparative evidence (effect estimates expressed as risk differences) and relative importance ratings of outcomes."
* statistic 1..*
* statistic ^slicing.discriminator.type = #pattern
* statistic ^slicing.discriminator.path = "statisticType"
* statistic ^slicing.rules = #open
* statistic contains netEffect 1..1 MS
* statistic[netEffect].statisticType = https://fevir.net/resources/CodeSystem/27270#STATO:0000424 "Risk Difference"
* statistic[netEffect]
  * attributeEstimate ^slicing.discriminator.type = #pattern
  * attributeEstimate ^slicing.discriminator.path = "type"
  * attributeEstimate ^slicing.rules = #open
  * attributeEstimate contains confidenceInterval 1..1 MS
  * attributeEstimate[confidenceInterval].type = https://fevir.net/resources/CodeSystem/27270#TBD:0000059 "Confidence interval"