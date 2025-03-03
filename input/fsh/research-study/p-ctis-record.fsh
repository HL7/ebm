Profile: CTISRecord
Parent: ResearchStudy
Id: ctis-record
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The CTISRecord Profile is used for a scientific study record in the Clinical Trial Information System (CTIS), a research study registry of the European Union (EU)."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains ResearchStudyResultAsComposition named resultAsComposition 0..*
* extension contains $ext-researchStudy-studyRegistration named studyRegistration 0..*