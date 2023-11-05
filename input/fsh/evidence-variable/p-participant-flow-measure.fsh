Profile: ParticipantFlowMeasure
Parent: VariableDefinition
Id: participant-flow-measure
Title: "Participant Flow Measure"
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The ParticipantFlowMeasure Profile is used to describe outcome measures for completion and reasons for non-completion of participation in a research study."
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains participantFlowMeasure 1..* MS
* useContext[participantFlowMeasure].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[participantFlowMeasure].code.code = #program
* useContext[participantFlowMeasure].code.display = "Program"
* useContext[participantFlowMeasure].valueCodeableConcept.text = "participant-flow-measure"
