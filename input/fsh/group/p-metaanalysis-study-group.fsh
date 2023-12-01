Profile: MetaanalysisStudyGroup
Parent: GroupR6
Id: metaanalysis-study-group
Description: "Profile of Group for Evidence Based Medicine IG. The MetaanalysisStudyGroup Profile is used to represent an enumerated group of participants in a meta-analysis where the participants are Evidence Resources."
* code.text = "Evidence"
* characteristic 1..1
  * code.text = "Member of"
  * valueReference only Reference(EvidenceList)
