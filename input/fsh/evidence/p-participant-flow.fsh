Profile: ParticipantFlow
Parent: NonComparativeEvidence
Id: participant-flow
Description: "Profile of Evidence for Evidence Based Medicine IG. The ParticipantFlow Profile is used for counts of completion and reasons for non-completion of participation in a research study." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains flow 1..* MS
* useContext[flow].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[flow].code.code = #program
* useContext[flow].code.display = "Program"
* useContext[flow].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#ParticipantFlow "ParticipantFlow"
* variableDefinition 2..*
  * ^comment = "The ParticipantFlowMeasure has variableRole of outcome."
  * intended 0..0
  * directnessMatch 0..0
* variableDefinition[outcome]
  * observed only Reference(ParticipantFlowMeasure)
* statistic.numberAffected 0..0
* statistic.modelCharacteristic 0..0
