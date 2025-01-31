Profile: ParticipantFlowReport
Parent: EvidenceTableReportPackage
Id: participant-flow-report
Description: "Profile of Composition for Evidence Based Medicine IG. The ParticipantFlowReport Profile is used for an evidence report including the counts (and proportions) for any number of participant flow measures in a research study. For example, the ParticipantFlowReport may include the data for a CONSORT Participant Flow Diagram reported with a randomized controlled trial."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#ParticipantFlowReport "ParticipantFlowReport"
* type.text = "Participant Flow Report"
* section[variables]
  * entry only Reference(ParticipantFlowEvidenceVariable)
* section[results]
  * section[enrollment]
    * section
      * focus only Reference(ParticipantFlowEvidenceVariable)
      * section[screenedEvidence]
        * entry only Reference(ParticipantFlowEvidence)
      * section[enrolledEvidence]
        * entry only Reference(ParticipantFlowEvidence)
      * section[comparativeEvidence]
        * entry only Reference(ComparativeParticipantFlowEvidence)   
  * section[comparativeResults]
    * section
      * focus only Reference(ParticipantFlowEvidenceVariable)
      * section[comparatorEvidence]
        * entry only Reference(ParticipantFlowEvidence)
      * section[interventionEvidence]
        * entry only Reference(ParticipantFlowEvidence)
      * section[enrolledGroupEvidence]
        * entry only Reference(ParticipantFlowEvidence)
      * section[comparativeEvidence]
        * entry only Reference(ComparativeParticipantFlowEvidence)
