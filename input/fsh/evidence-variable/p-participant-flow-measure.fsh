Profile: ParticipantFlowMeasure
Parent: VariableDefinition
Id: participant-flow-measure
Title: "Participant Flow Measure"
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The ParticipantFlowMeasure Profile is used to describe outcome measures for completion and reasons for non-completion of participation in a research study."
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains participantFlowMeasure 1..* MS
* useContext[participantFlowMeasure].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[participantFlowMeasure].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#ParticipantFlowMeasure "ParticipantFlowMeasure"
* handling = #dichotomous
