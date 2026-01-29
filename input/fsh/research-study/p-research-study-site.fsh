Profile: ResearchStudySite
Parent: ResearchStudy
Id: research-study-site
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The ResearchStudySite Profile is used to express site-specific data for a research study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* extension contains $ext-author named author 0..*
* extension contains ResearchStudySponsorConfidentialityStatement named confidentialityStatement 0..1
* extension contains ResearchStudySaeReportingMethod named saeReportingMethod 0..1
* extension contains ResearchStudyStudyAmendment named studyAmendment 0..1
* title ^comment = "The title should include the title of the parent ResearchStudy plus the name of the site represented."
* partOf 1..*
* relatesTo
  * extension contains RelatesToWithQuotation named quotation 0..1
* classifier from research-study-classifier (preferred)
