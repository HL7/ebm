Profile: NetEffectEstimate
Parent: EvidenceR6
Id: net-effect-estimate
Description: "Profile of Evidence for Evidence Based Medicine IG. The NetEffectEstimate Profile is used for evidence in which the observed data is net effect contributions (effect estimates expressed as risk differences, multiplied by relative importance ratings of outcomes)."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* variableDefinition 2..*
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "note.text"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..1 and exposure 1..1
* variableDefinition[population]
  * extension[VariableDefinitionVariableRoleCode].valueCode = #population
  * note.text = "population"
  * observed only Reference(NetEffectContributions)
  * intended 0..0
* variableDefinition[exposure]
  * extension[VariableDefinitionVariableRoleCode].valueCode = #exposure
  * note.text = "exposure"
  * extension[VariableDefinitionComparatorCategory] 1..1
  * observed only Reference(GroupAssignment)
  * intended 0..0
* statistic 1..*
* statistic ^slicing.discriminator.type = #value
* statistic ^slicing.discriminator.path = "statisticType.coding"
* statistic ^slicing.rules = #open
* statistic contains netEffect 1..1 MS
* statistic[netEffect].statisticType.coding 1..1
* statistic[netEffect].statisticType.coding = https://fevir.net/resources/CodeSystem/181513#STATO:0000424 "Risk Difference"
* statistic[netEffect]
  * attributeEstimate ^slicing.discriminator.type = #value
  * attributeEstimate ^slicing.discriminator.path = "type.coding"
  * attributeEstimate ^slicing.rules = #open
  * attributeEstimate contains confidenceInterval 1..1 MS
  * attributeEstimate[confidenceInterval].type.coding 1..1
  * attributeEstimate[confidenceInterval].type.coding = https://fevir.net/resources/CodeSystem/181513#STATO:0000196 "confidence interval"
  * modelCharacteristic 1..*
  * modelCharacteristic ^slicing.discriminator.type = #value
  * modelCharacteristic ^slicing.discriminator.path = "code.coding"
  * modelCharacteristic ^slicing.rules = #open
  * modelCharacteristic contains netEffectAnalysis 1..1 MS
  * modelCharacteristic[netEffectAnalysis].code.coding 1..1
  * modelCharacteristic[netEffectAnalysis].code.coding = https://fevir.net/resources/CodeSystem/181513#TBD:net-effect-analysis "Net effect analysis"
  