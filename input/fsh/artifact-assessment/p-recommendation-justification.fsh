Profile: RecommendationJustification
Parent: RecommendationRating
Id: recommendation-justification
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The RecommendationJustification Profile is used for expressing the rationale, evidence, and judgments supporting a recommendation, such as from a clinical practice guideline." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* identifier
  * ^definition = "A formal identifier that is used to identify this Recommendation Justification when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the Recommendation Justification"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Recommendation Justification."
* citeAs
  * ^definition = "Display of or reference to the bibliographic citation of the Recommendation Justification." 
  * ^short = "How to cite the Recommendation Justification"
* date
  * ^definition = "The date (and optionally time) when the Recommendation Justification was published. The date should change when the substantive content of the Rating changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the Recommendation Justification and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the Recommendation Justification."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the Recommendation Justification and/or its content."
* approvalDate ^short = "When the Recommendation Justification was approved by publisher"
* lastReviewDate ^short = "When the Recommendation Justification was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the Recommendation Justification is about."
  * ^short = "The recommendation that is justified"
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "type"
* content ^slicing.rules = #open
* content contains evidence 0..1 MS and netEffect 0..1 MS and judgments 0..1 MS and competingInterests 0..1 MS
* content[evidence].type = https://fevir.net/resources/CodeSystem/179423#evidence "Evidence"
* content[evidence]
  * component ^slicing.discriminator.type = #value
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #open
  * component contains summaryOfFindings 0..1 MS and desirableEffects 0..1 MS and undesirableEffects 0..1 MS and discussion 0..1
  * component[summaryOfFindings].type = https://fevir.net/resources/CodeSystem/179423#summary-of-findings "Summary of Findings"
  * component[desirableEffects].type = https://fevir.net/resources/CodeSystem/179423#desirable-effects "Desirable Effects"
  * component[undesirableEffects].type = https://fevir.net/resources/CodeSystem/179423#undesirable-effects "Undesirable Effects"
  * component[discussion].type = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
* content[netEffect].type = https://fevir.net/resources/CodeSystem/179423#net-effect "Net Effect"
* content[netEffect]
  * component ^slicing.discriminator.type = #value
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #open
  * component contains preferences 0..1 MS and discussion 0..1
  * component[preferences].type = https://fevir.net/resources/CodeSystem/179423#preferences "Preferences"
  * component[discussion].type = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
* content[judgments].type = https://fevir.net/resources/CodeSystem/179423#judgments "Judgments"
* content[judgments]
  * component ^slicing.discriminator.type = #value
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #open
  * component contains justification 0..1 MS and problemImportance 0..1 MS and costs 0..1 MS and costeffectiveness 0..1 MS and equity 0..1 MS and acceptability 0..1 MS and feasibility 0..1 MS
  * component[justification].type = https://fevir.net/resources/CodeSystem/179423#justification "Justification"
  * component[problemImportance].type = https://fevir.net/resources/CodeSystem/179423#problem-importance "Problem Importance"
  * component[costs].type = https://fevir.net/resources/CodeSystem/179423#costs "Costs"
  * component[costeffectiveness].type = https://fevir.net/resources/CodeSystem/179423#cost-effectiveness "Cost-effectiveness"
  * component[equity].type = https://fevir.net/resources/CodeSystem/179423#equity "Equity"
  * component[acceptability].type = https://fevir.net/resources/CodeSystem/179423#acceptability "Acceptability"
  * component[feasibility].type = https://fevir.net/resources/CodeSystem/179423#feasibility "Feasibility"
* content[competingInterests].type = https://fevir.net/resources/CodeSystem/179423#competing-interests "Competing Interests"
* content.classifier from recommendation-justification-classifier (extensible)

