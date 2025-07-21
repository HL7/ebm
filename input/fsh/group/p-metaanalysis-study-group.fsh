Profile: MetaanalysisStudyGroup
Parent: GroupR6
Id: metaanalysis-study-group
Description: "Profile of Group for Evidence Based Medicine IG. The MetaanalysisStudyGroup Profile is used to represent an enumerated group of participants in a meta-analysis where the participants are Evidence Resources."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* membership = #conceptual
* type 0..0
* code.text = "Evidence"
* characteristic 1..1
  * code.text = "Member of"
  * valueReference only Reference(EvidenceList)
  * exclude = false
