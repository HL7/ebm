Profile: NetEffectEstimate
Parent: Evidence
Id: net-effect-estimate
Description: "Profile of Evidence for Evidence Based Medicine IG. The NetEffectEstimate Profile is used for evidence in which the observed data are net effect contributions (effect estimates expressed as risk differences, multiplied by relative importance ratings of outcomes)."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* variableDefinition 3..*
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..1 and exposure 1..1 and outcome 1..1
* variableDefinition[population]
  * variableRole = #population
* variableDefinition[exposure]
  * variableRole = #exposure
  * comparatorCategory 1..1
  * observed only Reference(GroupAssignment)
  * intended only Reference(GroupAssignment)
* variableDefinition[outcome]
  * variableRole = #outcome
  * observed only Reference(NetEffectContributions)
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
  * attributeEstimate contains confidenceInterval 0..* MS and nnt 0..1
  * attributeEstimate[confidenceInterval].type.coding 1..1
  * attributeEstimate[confidenceInterval].type.coding = https://fevir.net/sevco#STATO:0000196 "confidence interval"
  * attributeEstimate[confidenceInterval].quantity 0..0
  * attributeEstimate[confidenceInterval].level 1..1
  * attributeEstimate[confidenceInterval].range 1..1
  * attributeEstimate[nnt].type.coding 1..1
  * attributeEstimate[nnt].type.coding = https://fevir.net/sevco#STATO:0000635 "number needed to treat"
  * attributeEstimate[nnt].type.text = "Number needed to treat to prevent 1 composite importance-adjusted outcome"
  * attributeEstimate[nnt].level 0..0
  * modelCharacteristic 1..*
  * modelCharacteristic ^slicing.discriminator.type = #value
  * modelCharacteristic ^slicing.discriminator.path = "code.text"
  * modelCharacteristic ^slicing.rules = #open
  * modelCharacteristic contains netEffectAnalysis 1..1 MS
  * modelCharacteristic[netEffectAnalysis].code.text = "Net effect analysis"
  