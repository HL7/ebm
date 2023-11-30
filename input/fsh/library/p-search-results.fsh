Profile: SearchResults
Parent: Library
Id: search-results
Description: "Profile of Library for Evidence Based Medicine IG. The SearchResults Profile is used to represent search results, such as for a systematic review."
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection "Asset Collection"
* subjectReference only Reference(SearchStrategy)
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains searchResults 1..* MS
* useContext[searchResults].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[searchResults].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#SearchResults "SearchResults"
* topic 0..0