Profile: RecommendationJustification
Parent: ArtifactAssessment
Id: recommendation-justification
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The RecommendationJustification Profile is used for expressing the rationale, evidence, and judgments supporting a recommendation, such as from a clinical practice guideline." 
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
* content ^slicing.discriminator.type = #pattern
* content ^slicing.discriminator.path = "type"
* content ^slicing.rules = #closed
* content contains recommendationSpecification 1..1 MS and evidence 0..1 MS and netEffect 0..1 MS and judgments 0..1 MS and considerations 0..1 MS
* content[recommendationSpecification].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[recommendationSpecification].type = https://fevir.net/resources/CodeSystem/27834#RJCS-content0 "Recommendation Specification"
* content[recommendationSpecification]
  * component ^slicing.discriminator.type = #pattern
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains strengthOfRecommendation 0..1 MS and directionOfRecommendation 0..1 MS and population 0..1 MS and action 0..1 MS and oppositeAction 0..1 MS
  * component[strengthOfRecommendation].informationType = http://hl7.org/fhir/artifactassessment-information-type#rating
  * component[strengthOfRecommendation].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1000 "Strength of Recommendation"
  * component[directionOfRecommendation].informationType = http://hl7.org/fhir/artifactassessment-information-type#rating
  * component[directionOfRecommendation].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1014 "Direction of Recommendation"
  * component[population].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
  * component[population].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1015 "Population"
  * component[population].relatedArtifact ^comment = "The population Resource SHALL be the same as that referenced by the Resource in the artifactReference element."
  * component[action].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
  * component[action].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1016 "Action"
  * component[action].relatedArtifact ^comment = "The action Resource(s) SHALL be the same as that referenced by the Resource in the artifactReference element."
  * component[oppositeAction].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
  * component[oppositeAction].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1017 "Opposite Action"
  * component[oppositeAction].relatedArtifact ^comment = "The opposited action Resource(s) SHALL be the same as that referenced by the Resource in the artifactReference element."
* content[evidence].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[evidence].type = https://fevir.net/resources/CodeSystem/27834#RJCS-content1 "Evidence"
  * component ^slicing.discriminator.type = #pattern
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains desirableEffects 0..1 MS and undesirableEffects 0..1 MS
  * component[desirableEffects].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1004 "Desirable Effects"
  * component[undesirableEffects].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1005 "Undesirable Effects"
* content[netEffect].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[netEffect].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1007 "Net Effect"
  * component ^slicing.discriminator.type = #pattern
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains preferences 0..1 MS
  * component[preferences].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1006 "Values/Preferences"
* content[judgments].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[judgments].type = https://fevir.net/resources/CodeSystem/27834#RJCS-content2 "Judgments"
  * component ^slicing.discriminator.type = #pattern
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains problemImportance 0..1 MS and costs 0..1 MS and costeffectiveness 0..1 MS and equity 0..1 MS and acceptability 0..1 MS and feasibility 0..1 MS
  * component[problemImportance].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1003 "Problem Importance"
  * component[costs].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1008 "Resources/Costs"
  * component[costeffectiveness].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1009 "Cost-effectiveness"
  * component[equity].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1010 "Equity"
  * component[acceptability].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1011 "Acceptability"
  * component[feasibility].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1012 "Feasibility"
* content[considerations].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[considerations].type = https://fevir.net/resources/CodeSystem/27834#RJCS-content3 "Considerations"
  * component ^slicing.discriminator.type = #pattern
  * component ^slicing.discriminator.path = "type"
  * component ^slicing.rules = #closed
  * component contains subgroupConsiderations 0..1 MS and implementationConsiderations 0..1 MS and monitoringConsiderations 0..1 MS and competingInterests 0..1 MS and researchPriorities 0..1 MS
  * component[subgroupConsiderations].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1019 "Subgroup Considerations"
  * component[implementationConsiderations].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1020 "Implementation Considerations"
  * component[monitoringConsiderations].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1021 "Monitoring Considerations"
  * component[competingInterests].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1002 "Competing Interests"
  * component[researchPriorities].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1022 "Research Priorities"
* content.classifier from https://fevir.net/resources/ValueSet/107288 (extensible)
* content.freeToShare
  * ^definition = "Acceptable to publicly share the content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the content"
