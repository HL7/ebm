Profile: ParticipantFlowReport
Parent: EvidenceReport
Id: participant-flow-report
Description: "Profile of Composition for Evidence Based Medicine IG. The ParticipantFlowReport Profile is used for an evidence report including the counts (and proportions) for any number of participant flow measures in a research study. For example, the ParticipantFlowReport may include the data for a CONSORT Participant Flow Diagram reported with a randomized controlled trial."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#ParticipantFlowReport "ParticipantFlowReport"
* type.text = "Participant Flow Report"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains results-flow 0..* MS
* section[results-flow].code.coding 1..1
* section[results-flow].code.coding = https://fevir.net/resources/CodeSystem/179423#results "Results"
* section[results-flow]
  * focus only Reference(ParticipantFlowEvidenceVariable)
  * entry only Reference(ParticipantFlowEvidence or ComparativeParticipantFlowEvidence)
