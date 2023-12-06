Profile: ComparativeParticipantFlow
Parent: ComparativeEvidence
Id: comparative-participant-flow
Description: "Profile of Evidence for Evidence Based Medicine IG. The ComparativeParticipantFlow Profile is used for comparisons of counts of completion and reasons for non-completion of participation in a research study." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* variableDefinition
  * ^comment = "The ParticipantFlowMeasure has variableRole of outcome."
  * intended 0..0
  * directnessMatch 0..0
* variableDefinition[outcome]
  * observed only Reference(ParticipantFlowMeasure)

