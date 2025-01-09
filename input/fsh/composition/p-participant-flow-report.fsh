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
  * section 1..*
    * focus only Reference(ParticipantFlowEvidenceVariable)
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.coding"
    * section ^slicing.rules = #open
    * section contains comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and totalGroup 0..1 MS and comparativeEvidence 0..1 MS
    * section[comparatorEvidence].code.coding 1..1
    * section[comparatorEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-comparator-alone "Evidence with comparator alone"
    * section[comparatorEvidence]
      * entry 0..1 
      * entry only Reference(ParticipantFlowEvidence)
    * section[interventionEvidence].code.coding 1..1
    * section[interventionEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-alone "Evidence with intervention alone"
    * section[interventionEvidence]
      * entry 0..1 
      * entry only Reference(ParticipantFlowEvidence)
    * section[totalGroup].code.coding 1..1
    * section[totalGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-total-group "Evidence with total group"
    * section[totalGroup]
      * entry 0..1 
      * entry only Reference(ParticipantFlowEvidence)
    * section[comparativeEvidence].code.coding 1..1
    * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-vs-comparator "Evidence with intervention vs. comparator"
    * section[comparativeEvidence]
      * entry 0..1 
      * entry only Reference(ComparativeParticipantFlowEvidence)
