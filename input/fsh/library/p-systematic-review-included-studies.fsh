Profile: SystematicReviewIncludedStudies
Parent: Library
Id: systematic-review-included-studies
Description: "Profile of Library for Evidence Based Medicine IG. The SystematicReviewIncludedStudies Profile is used to represent the subset of search results of a systematic review which meet the inclusion criteria."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection "Asset Collection"
* subjectReference only Reference(SystematicReviewEligibilityCriteria)
* topic 0..0