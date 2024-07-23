Profile: SystematicReview
Parent: ResearchStudy
Id: systematic-review
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The SystematicReview Profile is used for a scientific study based on a protocol that includes search and selection of eligible studies, study quality assessment, data extraction, and synthesis."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains ResearchStudySearchStrategy named searchStrategy 0..*
* extension contains ResearchStudyStudyEligibilityCriteria named studyEligibiltiyCriteria 0..1
* extension contains ResearchStudyNumberOfStudiesIdentified named numberOfStudiesIdentified 0..1
* extension contains ResearchStudyNumberOfStudiesIncluded named numberOfStudiesIncluded 0..1
* extension contains ResearchStudyIncludedStudy named includedStudy 0..*
* extension contains ResearchStudyExcludedStudy named excludedStudy 0..*
* extension contains ResearchStudyResultAsComposition named resultAsComparison 0..*
* phase 0..0
* recruitment 0..0