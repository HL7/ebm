Profile: EndpointAnalysisPlan
Parent: EvidenceR6
Id: endpoint-analysis-plan
Description: "Profile of Evidence for Evidence Based Medicine IG. The EndpointAnalysisPlan Profile is used for specification of the statistical model for analysis of a single endpoint." 
* extension contains $ext-characteristic-expression named modelExpression 0..1
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains eap 1..* MS
* useContext[eap].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[eap].valueCodeableConcept = https://fevir.net/resources/CodeSystem/179423#EndpointAnalysisPlan "EndpointAnalysisPlan"
* statistic.modelCharacteristic 1..*
  * ^comment = "After the Evidence StructureDefinition is revised, set intended 0..1 boolean to value of True."
  * extension[intended].valueBoolean = true
