Profile: EvidenceList
Parent: List
Id: evidence-list
Description: "Profile of List for Evidence Based Medicine IG. The EvidenceList Profile is used to provide a list of Evidence Resources. The EvidenceList Profile is used to represent a Group of Evidence for the population for an EvidenceSynthesisEvidence using a summary data meta-analysis approach and is referenced from a MetaanalysisStudyGroup."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* code.coding 1..1
* code.coding = EBMonFHIRProfileNameCodeSystem#EvidenceList "EvidenceList"
* code.text = "Evidence List"
* encounter 0..0
* entry
  * item only Reference(Evidence)
