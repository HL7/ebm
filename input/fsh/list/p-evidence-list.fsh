Profile: EvidenceList
Parent: List
Id: evidence-list
Description: "Profile of List for Evidence Based Medicine IG. The EvidenceList Profile is used to provide a list of Evidence Resources. The EvidenceList Profile is used to represent a Group of Evidence for the population for an EvidenceSynthesisEvidence using a summary data meta-analysis approach and is referenced from a MetaanalysisStudyGroup."
* code.coding = https://fevir.net/resources/CodeSystem/179423#EvidenceList "EvidenceList"
* code.text = "Evidence List"
* encounter 0..0
* entry
  * item only Reference(Evidence)
