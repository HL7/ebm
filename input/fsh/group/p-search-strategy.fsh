Profile: SearchStrategy
Parent: ConceptualCohortDefinition
Id: search-strategy
Description: "Profile of Group for Evidence Based Medicine IG. The SearchStrategy Profile is used to express the criteria defining a search strategy, such as for a systematic review."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* characteristic.code from SearchStrategyCharacteristic (extensible)
