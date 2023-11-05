Profile: EndpointAnalysisPlan
Parent: Evidence
Id: endpoint-analysis-plan
Description: "Profile of Evidence for Evidence Based Medicine IG. The EndpointAnalysisPlan Profile is used for specification of the statistical model for analysis of a single endpoint." 
* extension contains $ext-characteristic-expression named modelExpression 0..1
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains eap 1..* MS
* useContext[eap].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[eap].code.code = #program
* useContext[eap].code.display = "Program"
* useContext[eap].valueCodeableConcept.text = "endpoint-analysis-plan"
* statistic.modelCharacteristic 1..*
  * ^comment = "After the Evidence StructureDefinition is revised, set intended 0..1 boolean to value of True."
  * extension contains StatisticModelIntended named intended 1..1 and
  StatisticModelIncludeIf named includeIf 0..1
  * extension[intended].valueBoolean = true
* statistic.modelCharacteristic.variable
  * extension contains StatisticModelIncludeIf named includeIf 0..1