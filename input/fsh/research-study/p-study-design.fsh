Profile: StudyDesign
Parent: ResearchStudy
Id: study-design
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The StudyDesign Profile is used to add extensions for additional expressions of study design features with the study protocol."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* extension contains $ext-author named author 0..*
* extension contains RelatesToWithQuotation named RelatesToWithQuotation 0..*
* extension contains ResearchStudySponsorConfidentialityStatement named confidentialityStatement 0..1
* extension contains ResearchStudySaeReportingMethod named saeReportingMethod 0..1
* extension contains ResearchStudyStudyAmendment named studyAmendment 0..1
* title ^comment = "The protocol should have a descriptive title that identifies the scientific aspects of the trial sufficiently to ensure it is immediately evident what the trial is investigating and on whom, and to allow retrieval from literature or internet searches."
