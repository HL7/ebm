Profile: Recommendation
Parent: EvidenceReport
Id: recommendation
Description: "Profile of Composition for Evidence Based Medicine IG. The Recommendation Profile is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a RecommendationPlan Profile of PlanDefinition and a RecommendationJustification Profile of ArtifactAssessment."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category contains recommendation 1..1 MS
* category[recommendation].coding = https://fevir.net/resources/CodeSystem/179423#Recommendation "Recommendation"
* relatesTo 1..*
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "type"
* relatesTo ^slicing.rules = #open
* relatesTo contains derivedFrom 1..* MS
* relatesTo[derivedFrom].type = http://hl7.org/fhir/related-artifact-type#derived-from
* relatesTo[derivedFrom].resourceReference only Reference(RecommendationJustification or PlanDefinition or Composition)
* section 1..5
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section contains recommendationSpecification 1..1 MS and evidence 0..1 MS and netEffect 0..1 MS and judgments 0..1 MS and considerations 0..1 MS
* section[recommendationSpecification].code = https://fevir.net/resources/CodeSystem/179423#recommendation-specification "Recommendation Specification"
* section[recommendationSpecification]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains recommendationStatement 0..1 MS and ratingSystem 0..1 and strengthOfRecommendationRating 0..1 and directionOfRecommendation 0..1 and otherRating 0..1 and overallRelatedItems 0..1 and discussion 0..1 and population 0..1 and action 0..1 and oppositeAction 0..1 and dataSource 0..1
  * section[recommendationStatement].code.coding = https://fevir.net/resources/CodeSystem/179423#recommendation-statement "Recommendation Statement"
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
* section[evidence].code = https://fevir.net/resources/CodeSystem/179423#evidence "Evidence"
* section[evidence]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains summaryOfFindings 0..1 and desirableSummary 0..1 and undesirableSummary 0..1 and discussion 0..1 and dataSource 0..1
  * section[summaryOfFindings].code.coding = https://fevir.net/resources/CodeSystem/179423#summary-of-findings "Summary of Findings"  
  * section[summaryOfFindings]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains summaryOfFindingsRatings 0..1 and summaryOfFindingsRelatedItems 0..1
    * section[summaryOfFindingsRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[summaryOfFindingsRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[desirableSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#desirable-effects "Desirable Effects"
  * section[desirableSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains desirableRatings 0..1 and desirableRelatedItems 0..1 
    * section[desirableRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[desirableRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[undesirableSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#undesirable-effects "Undesirable Effects"
  * section[undesirableSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains undesirableRatings 0..1 and undesirableRelatedItems 0..1
    * section[undesirableRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[undesirableRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[discussion].code.coding = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
  * section[dataSource].code.coding = https://fevir.net/resources/CodeSystem/179423#data-source "Data Source"
* section[netEffect].code = https://fevir.net/resources/CodeSystem/179423#net-effect "Net Effect"
* section[netEffect]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains netEffectSummary 0..1 and netEffectRatings 0..1 and netEffectRelatedItems 0..1 and preferencesSummary 0..1 and discussion 0..1 and dataSource 0..1
  * section[netEffectSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#summary "Summary"
  * section[netEffectRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
  * section[netEffectRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[preferencesSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#preferences "Preferences"
  * section[preferencesSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains preferencesRatings 0..1 and preferencesRelatedItems 0..1
    * section[preferencesRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[preferencesRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[discussion].code.coding = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
  * section[dataSource].code.coding = https://fevir.net/resources/CodeSystem/179423#data-source "Data Source"
* section[judgments].code.coding = https://fevir.net/resources/CodeSystem/179423#judgments "Judgments"
* section[judgments]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains overallJustificationSummary 0..1 and problemImportanceSummary 0..1 and costsSummary 0..1 and costEffectivenessSummary 0..1 and equitySummary 0..1 and acceptabilitySummary 0..1 and feasibilitySummary 0..1
  * section[overallJustificationSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#justification "Justification"
  * section[overallJustificationSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains overallJustificationRatings 0..1 and overallJustificationRelatedItems 0..1
    * section[overallJustificationRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[overallJustificationRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[problemImportanceSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#problem-importance "Problem Importance"
  * section[problemImportanceSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains problemImportanceRatings 0..1 and problemImportanceRelatedItems 0..1
    * section[problemImportanceRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[problemImportanceRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[costsSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#costs "Costs"
  * section[costsSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains costsRatings 0..1 and costsRelatedItems 0..1
    * section[costsRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[costsRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[costEffectivenessSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#cost-effectiveness "Cost-effectiveness"
  * section[costEffectivenessSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains costEffectivenessRatings 0..1 and costEffectivenessRelatedItems 0..1
    * section[costEffectivenessRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[costEffectivenessRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[equitySummary].code.coding = https://fevir.net/resources/CodeSystem/179423#equity "Equity"
  * section[equitySummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains equityRatings 0..1 and equityRelatedItems 0..1
    * section[equityRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[equityRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[acceptabilitySummary].code.coding = https://fevir.net/resources/CodeSystem/179423#acceptability "Acceptability"
  * section[acceptabilitySummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains acceptabilityRatings 0..1 and acceptabilityRelatedItems 0..1
    * section[acceptabilityRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[acceptabilityRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[feasibilitySummary].code.coding = https://fevir.net/resources/CodeSystem/179423#feasibility "Feasibility"
  * section[feasibilitySummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains feasibilityRatings 0..1 and feasibilityRelatedItems 0..1
    * section[feasibilityRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[feasibilityRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
* section[considerations].code.coding = https://fevir.net/resources/CodeSystem/179423#considerations "Considerations"
* section[considerations]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains overallConsiderationsSummary 0..1 and overallConsiderationsRatings 0..1 MS and overallConsiderationsRelatedItems 0..1 and subgroupSummary 0..1 and implementationSummary 0..1 and monitoringSummary 0..1 and competingSummary 0..1 and researchSummary 0..1
  * section[overallConsiderationsSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#summary "Summary"
  * section[overallConsiderationsRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
  * section[overallConsiderationsRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[subgroupSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#subgroup-considerations "Subgroup Considerations"
  * section[subgroupSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains subgroupRatings 0..1 and subgroupRelatedItems 0..1
    * section[subgroupRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[subgroupRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[implementationSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#implementation-considerations "Implementation Considerations"
  * section[implementationSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains implementationRatings 0..1 and implementationRelatedItems 0..1
    * section[implementationRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[implementationRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[monitoringSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#monitoring-considerations "Monitoring Considerations"
  * section[monitoringSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains monitoringRatings 0..1 and monitoringRelatedItems 0..1
    * section[monitoringRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[monitoringRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[competingSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#competing-interests "Competing Interests"
  * section[competingSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains competingRatings 0..1 and competingRelatedItems 0..1
    * section[competingRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[competingRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"
  * section[researchSummary].code.coding = https://fevir.net/resources/CodeSystem/179423#research-considerations "Research Considerations"
  * section[researchSummary]
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains researchRatings 0..1 and researchRelatedItems 0..1
    * section[researchRatings].code.coding = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
    * section[researchRelatedItems].code.coding = https://fevir.net/resources/CodeSystem/179423#related-items "Related Items"

