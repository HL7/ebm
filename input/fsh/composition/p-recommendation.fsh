Profile: Recommendation
Parent: EvidenceReport
Id: recommendation
Description: "Profile of Composition for Evidence Based Medicine IG. The Recommendation Profile is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a RecommendationPlan Profile of PlanDefinition and a RecommendationJustification Profile of ArtifactAssessment."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains recommendation 1..1 MS
* category[recommendation].text = "Recommendation"
* section 5..5
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section contains recommendationSpecification 1..1 MS and evidence 1..1 MS and netEffect 1..1 MS and judgments 1..1 MS and considerations 1..1 MS
* section[recommendationSpecification].code.text = "Recommendation Specification"
* section[recommendationSpecification]
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains overallRatings 0..1 MS and overallSummary 0..1 and overallRelatedItems 0..1 and strengthOfRecommendationRating 0..1 and strengthOfRecommendationSummary 0..1 and directionOfRecommendation 0..1 and populationDisplay 0..1 and actionDisplay 0..1 and oppositeActionDisplay 0..1
  * section[overallRatings].code.text = "overallRatings"
  * section[overallSummary].code.text = "overallSummary"
  * section[overallRelatedItems].code.text = "overallSummary"
  * section[strengthOfRecommendationRating].code.text = "strengthOfRecommendationRating"
  * section[strengthOfRecommendationSummary].code.text = "strengthOfRecommendationSummary"
  * section[directionOfRecommendation].code.text = "directionOfRecommendation"
  * section[populationDisplay].code.text = "populationDisplay"
  * section[actionDisplay].code.text = "actionDisplay"
  * section[oppositeActionDisplay].code.text = "oppositeActionDisplay"
* section[evidence].code.text = "Evidence"
* section[evidence]
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains overallRatings 0..1 MS and overallSummary 0..1 and overallRelatedItems 0..1 and summaryOfFindingsRatings 0..1 and summaryOfFindingsSummary 0..1 and summaryOfFindingsRelatedItems 0..1 and desirableRatings 0..1 and desirableSummary 0..1 and desirableRelatedItems 0..1 and undesirableRatings 0..1 and undesirableSummary 0..1 and undesirableRelatedItems 0..1
  * section[overallRatings].code.text = "overallRatings"
  * section[overallSummary].code.text = "overallSummary"
  * section[overallRelatedItems].code.text = "overallSummary"
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
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains valuesRatings 0..1 MS and valuesSummary 0..1 and valuesRelatedItems 0..1 and netEffectRatings 0..1 and netEffectSummary 0..1 and netEffectRelatedItems 0..1
  * section[valuesRatings].code.text = "valuesRatings"
  * section[valuesSummary].code.text = "valuesSummary"
  * section[valuesRelatedItems].code.text = "valuesRelatedItems"
  * section[netEffectRatings].code.text = "netEffectRatings"
  * section[netEffectSummary].code.text = "netEffectSummary"
  * section[netEffectRelatedItems].code.text = "netEffectRelatedItems"
* section[judgments].code.text = "Judgments"
* section[judgments]
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains overallRatings 0..1 MS and overallSummary 0..1 and overallRelatedItems 0..1 and problemImportanceRatings 0..1 and problemImportanceSummary 0..1 and problemImportanceRelatedItems 0..1 and costsRatings 0..1 and costsSummary 0..1 and costsRelatedItems 0..1 and costEffectivenessRatings 0..1 and costEffectivenessSummary 0..1 and costEffectivenessRelatedItems 0..1 and equityRatings 0..1 and equitySummary 0..1 and equityRelatedItems 0..1 and acceptabilityRatings 0..1 and acceptabilitySummary 0..1 and acceptabilityRelatedItems 0..1 and feasibilityRatings 0..1 and feasibilitySummary 0..1 and feasibilityRelatedItems 0..1
  * section[overallRatings].code.text = "overallRatings"
  * section[overallSummary].code.text = "overallSummary"
  * section[overallRelatedItems].code.text = "overallSummary"
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
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains overallRatings 0..1 MS and overallSummary 0..1 and overallRelatedItems 0..1 and subgroupRatings 0..1 and subgroupSummary 0..1 and subgroupRelatedItems 0..1 and implementationRatings 0..1 and implementationSummary 0..1 and implementationRelatedItems 0..1 and monitoringRatings 0..1 and monitoringSummary 0..1 and monitoringRelatedItems 0..1 and competingRatings 0..1 and competingSummary 0..1 and competingRelatedItems 0..1 and researchRatings 0..1 and researchSummary 0..1 and researchRelatedItems 0..1
  * section[overallRatings].code.text = "overallRatings"
  * section[overallSummary].code.text = "overallSummary"
  * section[overallRelatedItems].code.text = "overallSummary"
  * section[subgroupRatings].code.text = "subgroupRatings"
  * section[subgroupSummary].code.text = "subgroupSummary"
  * section[subgroupRelatedItems].code.text = "subgroupRelatedItems"
  * section[implementationRatings].code.text = "implementationRatings"
  * section[implementationSummary].code.text = "implementationSummary"
  * section[implementationRelatedItems].code.text = "implementationRelatedItems"
  * section[monitoringRatings].code.text = "monitoringRatings"
  * section[monitoringSummary].code.text = "monitoringSummary"
  * section[monitoringRelatedItems].code.text = "monitoringRelatedItems"
  * section[competingRatings].code.text = "competingRatings"
  * section[competingSummary].code.text = "competingSummary"
  * section[competingRelatedItems].code.text = "competingRelatedItems"
  * section[researchRatings].code.text = "researchRatings"
  * section[researchSummary].code.text = "researchSummary"
  * section[researchRelatedItems].code.text = "researchRelatedItems"
