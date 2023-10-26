Profile: ParticipantFlow
Parent: Evidence
Id: participant-flow
Description: "Profile of Evidence for Evidence Based Medicine IG. The ParticipantFlow Profile is used for counts of completion and reasons for non-completion of participation in a research study." 
* variableDefinition 2..*
  * ^comment = "The ParticipantFlowMeasure has variableRole of measuredVariable."
* variableDefinition ^slicing.discriminator.type = #pattern
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains participantFlowMeasure 1..1 MS
* variableDefinition[participantFlowMeasure].variableRole = http://terminology.hl7.org/CodeSystem/variable-role#meauredVariable "measured variable"
* statistic.numberAffected 0..0
* statistic.modelCharacteristic 0..0
