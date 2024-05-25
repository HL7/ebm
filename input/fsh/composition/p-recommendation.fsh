Profile: Recommendation
Parent: EvidenceReport
Id: recommendation
Description: "Profile of Composition for Evidence Based Medicine IG. The Recommendation Profile is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a RecommendationPlan Profile of PlanDefinition and a RecommendationJustification Profile of ArtifactAssessment."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#Recommendation "Recommendation"
* relatesTo 1..*
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "type"
* relatesTo ^slicing.rules = #open
* relatesTo contains citeAs 0..1
* relatesTo[citeAs].type = http://hl7.org/fhir/related-artifact-type#cite-as
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #closed
* section contains recommendationSpecification 1..1 MS and discussion 0..1 MS and evidence 0..1 MS and justification 0..1 MS and considerations 0..1 MS
* section[recommendationSpecification].code.coding 1..1
* section[recommendationSpecification].code.coding = https://fevir.net/resources/CodeSystem/179423#recommendation-specification "Recommendation Specification"
* section[recommendationSpecification]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains recommendationStatement 0..1 MS and population 0..1 and action 0..1 and oppositeAction 0..1
  * section[recommendationStatement].code.coding 1..1
  * section[recommendationStatement].code.coding = https://fevir.net/resources/CodeSystem/179423#recommendation-statement "Recommendation Statement"
  * section[population].code.coding 1..1
  * section[population].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
  * section[action].code.coding 1..1
  * section[action].code.coding = https://fevir.net/resources/CodeSystem/179423#action "Action"
  * section[oppositeAction].code.coding 1..1
  * section[oppositeAction].code.coding = https://fevir.net/resources/CodeSystem/179423#opposite-action "Opposite Action"
* section[discussion].code.coding 1..1
* section[discussion].code.coding = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
* section[evidence].code.coding 1..1
* section[evidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence "Evidence"
* section[justification].code.coding 1..1
* section[justification].code.coding = https://fevir.net/resources/CodeSystem/179423#justification "Justification"
* section[justification]
  * entry only Reference(RecommendationJustification)
* section[considerations].code.coding 1..1
* section[considerations].code.coding = https://fevir.net/resources/CodeSystem/179423#considerations "Considerations"
* section[considerations]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains summary 0..1 and subgroup 0..1 and implementation 0..1 and monitoring 0..1 and competingInterests 0..1 and research 0..1
  * section[summary].code.coding 1..1
  * section[summary].code.coding = https://fevir.net/resources/CodeSystem/179423#summary "Summary"
  * section[subgroup].code.coding 1..1
  * section[subgroup].code.coding = https://fevir.net/resources/CodeSystem/179423#subgroup-considerations "Subgroup Considerations"
  * section[implementation].code.coding 1..1
  * section[implementation].code.coding = https://fevir.net/resources/CodeSystem/179423#implementation-considerations "Implementation Considerations"
  * section[monitoring].code.coding 1..1
  * section[monitoring].code.coding = https://fevir.net/resources/CodeSystem/179423#monitoring-considerations "Monitoring Considerations"
  * section[competingInterests].code.coding 1..1
  * section[competingInterests].code.coding = https://fevir.net/resources/CodeSystem/179423#competing-interests "Competing Interests"
  * section[research].code.coding 1..1
  * section[research].code.coding = https://fevir.net/resources/CodeSystem/179423#research-considerations "Research Considerations"
 