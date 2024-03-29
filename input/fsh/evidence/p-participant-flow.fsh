Profile: ParticipantFlow
Parent: NonComparativeEvidence
Id: participant-flow
Description: "Profile of Evidence for Evidence Based Medicine IG. The ParticipantFlow Profile is used for counts of completion and reasons for non-completion of participation in a research study." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* variableDefinition 2..*
  * ^comment = "The ParticipantFlowMeasure has variableRole of outcome."
  * intended 0..0
  * directnessMatch 0..0
* variableDefinition[outcome]
  * observed only Reference(ParticipantFlowMeasure)
* statistic.numberAffected 0..0
* statistic.modelCharacteristic 0..0
