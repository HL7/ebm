Profile: ParticipantFlowVariablesList
Parent: List
Id: participant-flow-variables-list
Description: "Profile of List for Evidence Based Medicine IG. The ParticipantFlowVariablesList Profile is used to provide a list of EvidenceVariable Resources which represent participant flow measures."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* code.coding 1..1
* code.coding = EBMonFHIRProfileNameCodeSystem#ParticipantFlowVariablesList "ParticipantFlowVariablesList"
* code.text = "Participant Flow Variables List"
* encounter 0..0
* entry
  * item only Reference(ParticipantFlowEvidenceVariable)
