Profile: SearchResults
Parent: Library
Id: search-results
Description: "Profile of Library for Evidence Based Medicine IG. The SearchResults Profile is represent search results, such as for a systematic review."
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection "Asset Collection"
* subjectReference only Reference(SearchStrategy)
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains searchResults 1..1 MS
* useContext[searchResults].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[searchResults].code.code = #program
* useContext[searchResults].code.display = "Program"
* useContext[searchResults].valueCodeableConcept.text = "search-results"