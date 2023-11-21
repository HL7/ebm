Profile: OutcomeVariable
Parent: VariableDefinition
Id: outcome-variable
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The OutcomeVariable Profile is used to classify an EvidenceVariable as an outcome or dependent variable for use in implementations that manage exposures differently than outcomes." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains outcome 1..* MS
* useContext[outcome].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[outcome].code.code = #program
* useContext[outcome].code.display = "Program"
* useContext[outcome].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#OutcomeVariable "OutcomeVariable"