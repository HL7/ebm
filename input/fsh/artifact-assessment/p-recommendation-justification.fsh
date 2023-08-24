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
* content[evidence].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[evidence].type = https://fevir.net/resources/CodeSystem/27834#RJCS-content1 "Evidence"
* content[netEffect].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[netEffect].type = https://fevir.net/resources/CodeSystem/27834#RJCS-1007 "Net Effect"
* content[judgments].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[judgments].type = https://fevir.net/resources/CodeSystem/27834#RJCS-content2 "Judgments"
* content[considerations].informationType = http://hl7.org/fhir/artifactassessment-information-type#container
* content[considerations].type = https://fevir.net/resources/CodeSystem/27834#RJCS-content3 "Considerations"
* content.classifier from https://fevir.net/resources/ValueSet/107288 (extensible)
* content.freeToShare
  * ^definition = "Acceptable to publicly share the content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the content"
