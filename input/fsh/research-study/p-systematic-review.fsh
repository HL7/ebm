Profile: SystematicReview
Parent: ResearchStudy
Id: systematic-review
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The SystematicReview Profile is used for a scientific study based on a protocol that includes search and selection of eligible studies, study quality assessment, data extraction, and synthesis."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* extension contains $ext-author named author 0..*
* extension contains ResearchStudySearchStrategy named searchStrategy 0..*
* extension contains ResearchStudySystematicReviewEligibilityCriteria named systematicReviewEligibilityCriteria 0..1
* extension contains ResearchStudyNumberOfStudiesIdentified named numberOfStudiesIdentified 0..1
* extension contains ResearchStudyNumberOfStudiesIncluded named numberOfStudiesIncluded 0..1
* extension contains ResearchStudyIncludedStudy named includedStudy 0..*
* extension contains ResearchStudyExcludedStudy named excludedStudy 0..*
* extension contains $ext-researchStudy-studyRegistration named studyRegistration 0..*
* relatesTo
  * extension contains RelatesToWithQuotation named quotation 0..1
* phase 0..0
* recruitment 0..0