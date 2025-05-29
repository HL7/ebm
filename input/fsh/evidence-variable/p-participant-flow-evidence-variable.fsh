Profile: ParticipantFlowEvidenceVariable
Parent: VariableDefinition
Id: participant-flow-evidence-variable
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The ParticipantFlowEvidenceVariable Profile is used to describe outcome measures for completion and non-completion of participation in a research study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "type"
* relatesTo ^slicing.rules = #open
* relatesTo contains supportedWith 0..*
* relatesTo[supportedWith].type = http://hl7.org/fhir/related-artifact-type#supported-with
* relatesTo[supportedWith].targetReference only ParticipantFlowReasonEvidenceVariable
* handling = #boolean
