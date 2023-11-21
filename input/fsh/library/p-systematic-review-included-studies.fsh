Profile: SystematicReviewIncludedStudies
Parent: Library
Id: systematic-review-included-studies
Description: "Profile of Library for Evidence Based Medicine IG. The SystematicReviewIncludedStudies Profile is used to represent the subset of search results of a systematic review which meet the inclusion criteria."
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection "Asset Collection"
* subjectReference only Reference(SystematicReviewEligibilityCriteria)
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains searchResults 1..* MS
* useContext[searchResults].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[searchResults].code.code = #program
* useContext[searchResults].code.display = "Program"
* useContext[searchResults].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#SystematicReviewIncludedStudies "SystematicReviewIncludedStudies"
* jurisdiction 0..0
* topic 0..0