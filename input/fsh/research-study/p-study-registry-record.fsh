Profile: StudyRegistryRecord
Parent: ResearchStudy
Id: study-registry-record
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The StudyRegistryRecord Profile is used for a scientific study record in a research study registry, such as ClinicalTrials.gov or the European Union Clinical Trial Information System (EU CTIS)."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-author named author 0..*
* extension contains RelatesToWithQuotation named RelatesToWithQuotation 0..*
* extension contains $ext-researchStudy-studyRegistration named studyRegistration 0..*
* extension contains ResearchStudyIsLowInterventionTrial named isLowInterventionTrial 0..1