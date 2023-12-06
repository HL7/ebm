Profile: SearchResults
Parent: Library
Id: search-results
Description: "Profile of Library for Evidence Based Medicine IG. The SearchResults Profile is used to represent search results, such as for a systematic review."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection "Asset Collection"
* subjectReference only Reference(SearchStrategy)
* topic 0..0