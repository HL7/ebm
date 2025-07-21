Profile: Recommendation
Parent: EvidenceReportPackage
Id: recommendation
Description: "Profile of Composition for Evidence Based Medicine IG. The Recommendation Profile is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a RecommendationPlan Profile of PlanDefinition and a RecommendationJustification Profile of ArtifactAssessment."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#Recommendation "Recommendation"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section[summary] 0..0
* section contains recommendationStatement 1..1 MS and ratings 0..1 and population 0..1 and action 0..1 and oppositeAction 0..1 and evidence 0..1 MS and justification 0..1 MS and considerations 0..1 MS
* section[recommendationStatement].code.coding 1..1
* section[recommendationStatement].code.coding = https://fevir.net/resources/CodeSystem/179423#recommendation-statement "Recommendation Statement"
* section[ratings].code.coding 1..1
* section[ratings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
* section[population].code.coding 1..1
* section[population].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
* section[action].code.coding 1..1
* section[action].code.coding = https://fevir.net/resources/CodeSystem/179423#action "Action"
* section[oppositeAction].code.coding 1..1
* section[oppositeAction].code.coding = https://fevir.net/resources/CodeSystem/179423#opposite-action "Opposite Action"
* section[evidence].code.coding 1..1
* section[evidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence "Evidence"
* section[justification].code.coding 1..1
* section[justification].code.coding = https://fevir.net/resources/CodeSystem/179423#justification "Justification"
* section[justification]
  * entry only Reference(RecommendationJustification)
* section[considerations].code.coding 1..1
* section[considerations].code.coding = https://fevir.net/resources/CodeSystem/179423#considerations "Considerations"
