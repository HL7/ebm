Profile: Estimand
Parent: EvidenceR6
Id: estimand
Description: "Profile of Evidence for Evidence Based Medicine IG. The Estimand Profile is used to specify the quantity estimated in order to address the study's research objective. The estimand consists of the following five attributes: Population, Treatment conditions, Variable (or Endpoint), Population-level summary (or Summary measure), and Handling of intercurrent events."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* variableDefinition 3..3
  * ^comment = "To report Population, Treatment conditions, and Variable (or Endpoint), use the variableRoleCode values of population, exposure, and outcome, respectively."
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "note.text"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..1 and exposure 1..1 and outcome 1..1 MS
* variableDefinition[population]
  * extension[variableRoleCode].valueCode = #population
  * extension[VariableDefinitionComparatorCategory] 0..0
  * note.text = "population"
  * observed only Reference(Group)
  * intended only Reference(Group)
* variableDefinition[exposure]
  * extension[variableRoleCode].valueCode = #exposure
  * extension[VariableDefinitionComparatorCategory] 0..1
  * note.text = "exposure"
* variableDefinition[outcome]
  * extension[variableRoleCode].valueCode = #outcome
  * note.text = "outcome"
  * extension[VariableDefinitionComparatorCategory] 0..0
  * observed only Reference(VariableDefinition)
  * intended only Reference(EvidenceVariable)
* statistic 1..*
* statistic.statisticType 1..1
* statistic.modelCharacteristic 1..1
  * ^comment = "TBD for Handling of intercurrent events"
  * code.coding 1..1
  * code.coding = https://fevir.net/resources/CodeSystem/179423#handling-ICE "Handling of intercurrent events"
