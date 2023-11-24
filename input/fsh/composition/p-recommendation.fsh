Profile: Recommendation
Parent: EvidenceReport
Id: recommendation
Description: "Profile of Composition for Evidence Based Medicine IG. The Recommendation Profile is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a RecommendationPlan Profile of PlanDefinition and a RecommendationJustification Profile of ArtifactAssessment."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains recommendation 1..1 MS
* category[recommendation].coding = https://fevir.net/resources/CodeSystem/179423#Recommendation "Recommendation"
* relatesTo 1..*
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "type"
* relatesTo ^slicing.rules = #open
* relatesTo contains derivedFrom 1..* MS
* relatesTo[derivedFrom].type = http://hl7.org/fhir/related-artifact-type#derived-from
* relatesTo[derivedFrom].resourceReference only Reference(RecommendationJustification or PlanDefinition)
* section 1..5
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section contains recommendationSpecification 1..1 MS and evidence 0..1 MS and netEffect 0..1 MS and judgments 0..1 MS and considerations 0..1 MS
* section[recommendationSpecification].code.coding = https://fevir.net/resources/CodeSystem/179423#recommendation-specification "Recommendation Specification"
* section[recommendationSpecification]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains recommendationStatement 0..1 MS and ratingSystem 0..1 and strengthOfRecommendationRating 0..1 and directionOfRecommendation 0..1 and otherRating 0..1 and overallRelatedItems 0..1 and discussion 0..1 and population 0..1 and action 0..1 and oppositeAction 0..1 and dataSource 0..1
  * section[recommendationStatement].code.coding = https://fevir.net/resources/CodeSystem/179423#recommendation-statement "Recommendation Statemen"
  * section[ratingSystem].code.coding = https://fevir.net/resources/CodeSystem/179423#rating-system "Rating System"
  * section[strengthOfRecommendationRating].code.coding = https://fevir.net/resources/CodeSystem/179423#strength-of-recommendation "Strength of Recommendation"
  * section[directionOfRecommendation].code.coding = https://fevir.net/resources/CodeSystem/179423#direction-of-recommendation "Direction of Recommendation"
  * section[otherRating].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
  * section[overallRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[discussion].code.coding = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
  * section[population].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
  * section[action].code.coding = https://fevir.net/resources/CodeSystem/179423#action "Action"
  * section[oppositeAction].code.coding = https://fevir.net/resources/CodeSystem/179423#opposite-action "Opposite Action"
  * section[dataSource].code.coding = https://fevir.net/resources/CodeSystem/179423#data-source "Data Source"
* section[evidence].code.text = "Evidence"
* section[evidence]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains summaryOfFindingsRatings 0..1 and summaryOfFindingsSummary 0..1 and summaryOfFindingsRelatedItems 0..1 and desirableRatings 0..1 and desirableSummary 0..1 and desirableRelatedItems 0..1 and undesirableRatings 0..1 and undesirableSummary 0..1 and undesirableRelatedItems 0..1
  * section[summaryOfFindingsRatings].code.text = "summaryOfFindingsRatings"
  * section[summaryOfFindingsSummary].code.text = "summaryOfFindingsSummary"
  * section[summaryOfFindingsRelatedItems].code.text = "summaryOfFindingsRelatedItems"
  * section[desirableRatings].code.text = "desirableRatings"
  * section[desirableSummary].code.text = "desirableSummary"
  * section[desirableRelatedItems].code.text = "desirableRelatedItems"
  * section[undesirableRatings].code.text = "undesirableRatings"
  * section[undesirableSummary].code.text = "undesirableSummary"
  * section[undesirableRelatedItems].code.text = "undesirableRelatedItems"
* section[netEffect].code.text = "Net Effect"
* section[netEffect]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains preferencesRatings 0..1 MS and preferencesSummary 0..1 and preferencesRelatedItems 0..1 and netEffectRatings 0..1 and netEffectSummary 0..1 and netEffectRelatedItems 0..1
  * section[preferencesRatings].code.text = "preferencesRatings"
  * section[preferencesSummary].code.text = "preferencesSummary"
  * section[preferencesRelatedItems].code.text = "preferencesRelatedItems"
  * section[netEffectRatings].code.text = "netEffectRatings"
  * section[netEffectSummary].code.text = "netEffectSummary"
  * section[netEffectRelatedItems].code.text = "netEffectRelatedItems"
* section[judgments].code.text = "Judgments"
* section[judgments]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains overallJustificationRatings 0..1 MS and overallJustificationSummary 0..1 and overallJustificationRelatedItems 0..1 and problemImportanceRatings 0..1 and problemImportanceSummary 0..1 and problemImportanceRelatedItems 0..1 and costsRatings 0..1 and costsSummary 0..1 and costsRelatedItems 0..1 and costEffectivenessRatings 0..1 and costEffectivenessSummary 0..1 and costEffectivenessRelatedItems 0..1 and equityRatings 0..1 and equitySummary 0..1 and equityRelatedItems 0..1 and acceptabilityRatings 0..1 and acceptabilitySummary 0..1 and acceptabilityRelatedItems 0..1 and feasibilityRatings 0..1 and feasibilitySummary 0..1 and feasibilityRelatedItems 0..1
  * section[overallJustificationRatings].code.text = "overallJustificationRatings"
  * section[overallJustificationSummary].code.text = "overallJustificationSummary"
  * section[overallJustificationRelatedItems].code.text = "overallJustificationRelatedItems"
  * section[problemImportanceRatings].code.text = "problemImportanceRatings"
  * section[problemImportanceSummary].code.text = "problemImportanceSummary"
  * section[problemImportanceRelatedItems].code.text = "problemImportanceRelatedItems"
  * section[costsRatings].code.text = "costsRatings"
  * section[costsSummary].code.text = "costsSummary"
  * section[costsRelatedItems].code.text = "costsRelatedItems"
  * section[costEffectivenessRatings].code.text = "costEffectivenessRatings"
  * section[costEffectivenessSummary].code.text = "costEffectivenessSummary"
  * section[costEffectivenessRelatedItems].code.text = "costEffectivenessRelatedItems"
  * section[equityRatings].code.text = "equityRatings"
  * section[equitySummary].code.text = "equitySummary"
  * section[equityRelatedItems].code.text = "equityRelatedItems"
  * section[acceptabilityRatings].code.text = "acceptabilityRatings"
  * section[acceptabilitySummary].code.text = "acceptabilitySummary"
  * section[acceptabilityRelatedItems].code.text = "acceptabilityRelatedItems"
  * section[feasibilityRatings].code.text = "feasibilityRatings"
  * section[feasibilitySummary].code.text = "feasibilitySummary"
  * section[feasibilityRelatedItems].code.text = "feasibilityRelatedItems"
* section[considerations].code.text = "Considerations"
* section[considerations]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains overallConsiderationsRatings 0..1 MS and overallConsiderationsSummary 0..1 and overallConsiderationsRelatedItems 0..1 and subgroupRatings 0..1 and subgroupSummary 0..1 and subgroupRelatedItems 0..1 and implementationRatings 0..1 and implementationSummary 0..1 and implementationRelatedItems 0..1 and monitoringRatings 0..1 and monitoringSummary 0..1 and monitoringRelatedItems 0..1 and competingRatings 0..1 and competingSummary 0..1 and competingRelatedItems 0..1 and researchRatings 0..1 and researchSummary 0..1 and researchRelatedItems 0..1
  * section[overallConsiderationsRatings].code.text = "overallConsiderationsRatings"
  * section[overallConsiderationsSummary].code.text = "overallConsiderationsSummary"
  * section[overallConsiderationsRelatedItems].code.text = "overallConsiderationsRelatedItems"
  * section[subgroupRatings].code.text = "subgroupConsiderationsRatings"
  * section[subgroupSummary].code.text = "subgroupConsiderationsSummary"
  * section[subgroupRelatedItems].code.text = "subgroupConsiderationsRelatedItems"
  * section[implementationRatings].code.text = "implementationConsiderationsRatings"
  * section[implementationSummary].code.text = "implementationConsiderationsSummary"
  * section[implementationRelatedItems].code.text = "implementationConsiderationsRelatedItems"
  * section[monitoringRatings].code.text = "monitoringConsiderationsRatings"
  * section[monitoringSummary].code.text = "monitoringConsiderationsSummary"
  * section[monitoringRelatedItems].code.text = "monitoringConsiderationsRelatedItems"
  * section[competingRatings].code.text = "competingInterestsRatings"
  * section[competingSummary].code.text = "competingInterestsSummary"
  * section[competingRelatedItems].code.text = "competingInterestsRelatedItems"
  * section[researchRatings].code.text = "researchConsiderationsRatings"
  * section[researchSummary].code.text = "researchConsiderationsSummary"
  * section[researchRelatedItems].code.text = "researchConsiderationsRelatedItems"
