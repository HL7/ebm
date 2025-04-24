Profile: CTISRecord
Parent: ResearchStudy
Id: ctis-record
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The CTISRecord Profile is used for a scientific study record in the European Union Clinical Trial Information System (EU CTIS), a research study registry of the European Union (EU)."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-author named author 0..*
* extension contains RelatesToWithQuotation named RelatesToWithQuotation 0..*
* extension contains $ext-researchStudy-studyRegistration named studyRegistration 0..*