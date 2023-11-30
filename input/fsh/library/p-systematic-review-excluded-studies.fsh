Profile: SystematicReviewExcludedStudies
Parent: Library
Id: systematic-review-excluded-studies
Description: "Profile of Library for Evidence Based Medicine IG. The SystematicReviewExcludedStudies Profile is used to represent the subset of search results of a systematic review which did not meet the inclusion criteria."
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection "Asset Collection"
* subjectReference only Reference(SystematicReviewEligibilityCriteria)
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains searchResults 1..* MS
* useContext[searchResults].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[searchResults].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#SystematicReviewExcludedStudies "SystematicReviewExcludedStudies"
* topic 0..0