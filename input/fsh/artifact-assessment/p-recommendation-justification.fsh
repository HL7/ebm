Profile: RecommendationJustification
Parent: ArtifactAssessment
Id: recommendation-justification
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The RecommendationJustification Profile is used for expressing the rationale, evidence, and judgments supporting a recommendation, such as from a clinical practice guideline." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* extension contains $ext-author named author 0..*
* identifier
  * ^definition = "A formal identifier that is used to identify this Recommendation Justification when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the Recommendation Justification"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Recommendation Justification."
* citeAs[x]
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
* content 1..5
  * ^definition = "A comment, rating, or classification of the recommendation."
  * ^short = "A comment, rating, or classification"
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "type"
* content ^slicing.rules = #closed
* content contains recommendationSpecification 1..1 MS and evidence 0..1 MS and netEffect 0..1 MS and judgments 0..1 MS and considerations 0..1 MS
* content[recommendationSpecification].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[recommendationSpecification].type = https://fevir.net/resources/CodeSystem/179423#recommendation-specification "Recommendation Specification"
* content[recommendationSpecification]
  * component ^slicing.discriminator.type = #value
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains recommendationStatement 0..1 MS and ratingSystem 0..1 MS and strengthOfRecommendation 0..1 MS and directionOfRecommendation 0..1 MS and otherRatings 0..1 and discussion 0..1 and population 0..1 MS and action 0..1 MS and oppositeAction 0..1 MS
  * component[recommendationStatement].informationType = http://hl7.org/fhir/artifactassessment-information-type#comment
  * component[recommendationStatement].type = https://fevir.net/resources/CodeSystem/179423#recommendation-statement "Recommendation Statement"
  * component[ratingSystem].informationType = http://hl7.org/fhir/artifactassessment-information-type#classifier
  * component[ratingSystem].type = https://fevir.net/resources/CodeSystem/179423#rating-system "Rating System"
  * component[strengthOfRecommendation].informationType = http://hl7.org/fhir/artifactassessment-information-type#rating
  * component[strengthOfRecommendation].type = https://fevir.net/resources/CodeSystem/179423#strength-of-recommendation "Strength of Recommendation"
  * component[directionOfRecommendation].informationType = http://hl7.org/fhir/artifactassessment-information-type#classifier
  * component[directionOfRecommendation].type = https://fevir.net/resources/CodeSystem/179423#direction-of-recommendation "Direction of Recommendation"
  * component[otherRatings].informationType = http://hl7.org/fhir/artifactassessment-information-type#rating
  * component[otherRatings].type = https://fevir.net/resources/CodeSystem/179423#ratings "Ratings"
  * component[discussion].informationType = http://hl7.org/fhir/artifactassessment-information-type#comment
  * component[discussion].type = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
  * component[population].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
  * component[population].type = https://fevir.net/resources/CodeSystem/179423#population "Population"
  * component[population].relatedArtifact ^comment = "The population Resource SHALL be the same as that referenced by the Resource in the artifactReference element."
  * component[action].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
  * component[action].type = https://fevir.net/resources/CodeSystem/179423#action "Action"
  * component[action].relatedArtifact ^comment = "The action Resource(s) SHALL be the same as that referenced by the Resource in the artifactReference element."
  * component[oppositeAction].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
  * component[oppositeAction].type = https://fevir.net/resources/CodeSystem/179423#opposite-action "Opposite Action"
  * component[oppositeAction].relatedArtifact ^comment = "The opposited action Resource(s) SHALL be the same as that referenced by the Resource in the artifactReference element."
* content[evidence].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[evidence].type = https://fevir.net/resources/CodeSystem/179423#evidence "Evidence"
* content[evidence]
  * component ^slicing.discriminator.type = #value
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains summaryOfFindings 0..1 MS and desirableEffects 0..1 MS and undesirableEffects 0..1 MS and discussion 0..1
  * component[summaryOfFindings].type = https://fevir.net/resources/CodeSystem/179423#summary-of-findings "Summary of Findings"
  * component[desirableEffects].type = https://fevir.net/resources/CodeSystem/179423#desirable-effects "Desirable Effects"
  * component[undesirableEffects].type = https://fevir.net/resources/CodeSystem/179423#undesirable-effects "Undesirable Effects"
  * component[discussion].type = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
* content[netEffect].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[netEffect].type = https://fevir.net/resources/CodeSystem/179423#net-effect "Net Effect"
* content[netEffect]
  * component ^slicing.discriminator.type = #value
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains preferences 0..1 MS and discussion 0..1
  * component[preferences].type = https://fevir.net/resources/CodeSystem/179423#preferences "Preferences"
  * component[discussion].type = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
* content[judgments].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[judgments].type = https://fevir.net/resources/CodeSystem/179423#judgments "Judgments"
* content[judgments]
  * component ^slicing.discriminator.type = #value
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains justification 0..1 MS and problemImportance 0..1 MS and costs 0..1 MS and costeffectiveness 0..1 MS and equity 0..1 MS and acceptability 0..1 MS and feasibility 0..1 MS
  * component[justification].type = https://fevir.net/resources/CodeSystem/179423#justification "Justification"
  * component[problemImportance].type = https://fevir.net/resources/CodeSystem/179423#problem-importance "Problem Importance"
  * component[costs].type = https://fevir.net/resources/CodeSystem/179423#costs "Costs"
  * component[costeffectiveness].type = https://fevir.net/resources/CodeSystem/179423#cost-effectiveness "Cost-effectiveness"
  * component[equity].type = https://fevir.net/resources/CodeSystem/179423#equity "Equity"
  * component[acceptability].type = https://fevir.net/resources/CodeSystem/179423#acceptability "Acceptability"
  * component[feasibility].type = https://fevir.net/resources/CodeSystem/179423#feasibility "Feasibility"
* content[considerations].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[considerations].type = https://fevir.net/resources/CodeSystem/179423#considerations "Considerations"
* content[considerations]
  * component ^slicing.discriminator.type = #value
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains subgroupConsiderations 0..1 MS and implementationConsiderations 0..1 MS and monitoringConsiderations 0..1 MS and competingInterests 0..1 MS and researchPriorities 0..1 MS
  * component[subgroupConsiderations].type = https://fevir.net/resources/CodeSystem/179423#subgroup-considerations "Subgroup Considerations"
  * component[implementationConsiderations].type = https://fevir.net/resources/CodeSystem/179423#implementation-considerations "Implementation Considerations"
  * component[monitoringConsiderations].type = https://fevir.net/resources/CodeSystem/179423#monitoring-considerations "Monitoring Considerations"
  * component[competingInterests].type = https://fevir.net/resources/CodeSystem/179423#competing-interests "Competing Interests"
  * component[researchPriorities].type = https://fevir.net/resources/CodeSystem/179423#research-considerations "Research Considerations"
* content.classifier from recommendation-justification-classifier (extensible)
* content.freeToShare
  * ^definition = "Acceptable to publicly share the content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the content"
