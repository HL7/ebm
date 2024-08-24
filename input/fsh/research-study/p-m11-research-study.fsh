Profile: M11ResearchStudy
Parent: ResearchStudy
Id: m11-research-study
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The M11ResearchStudy Profile is used to add extensions for use with an M11 Report."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-author named author 0..*
* extension contains ResearchStudySponsorConfidentialityStatement named confidentialityStatement 0..1
* extension contains ResearchStudySaeReportingMethod named saeReportingMethod 0..1
* extension contains ResearchStudyStudyAmendment named studyAmendment 0..1
* extension contains $ext-researchStudy-studyRegistration named studyRegistration 0..*
* title ^comment = "The protocol should have a descriptive title that identifies the scientific aspects of the trial sufficiently to ensure it is immediately evident what the trial is investigating and on whom, and to allow retrieval from literature or internet searches."
* objective
  * extension contains ResearchStudyEstimand named estimand 0..*
* outcomeMeasure 0..0