Profile: ParticipantFlowEvidence
Parent: NonComparativeEvidence
Id: participant-flow-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The ParticipantFlowEvidence Profile is used for counts of completion and reasons for non-completion of participation in a research study." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* variableDefinition 2..*
  * ^comment = "The ParticipantFlowEvidenceVariable has variableRole of outcome."
  * intended 0..0
  * directnessMatch 0..0
* variableDefinition[outcome]
  * observed only Reference(ParticipantFlowEvidenceVariable or ParticipantFlowReasonEvidenceVariable)
* statistic.numberAffected 0..0
* statistic.modelCharacteristic 0..0
