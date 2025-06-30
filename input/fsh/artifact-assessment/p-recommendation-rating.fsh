Profile: RecommendationRating
Parent: EvidenceAssessment
Id: recommendation-rating
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The RecommendationRating Profile is used for expressing the classifications of a recommendation, such as from a clinical practice guideline. Common classifications include strength of recommendation, direction of recommendation, and certainty of evidence." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* identifier
  * ^definition = "A formal identifier that is used to identify this Recommendation Rating when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the Recommendation Rating"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Recommendation Rating."
* citeAs
  * ^definition = "Display of or reference to the bibliographic citation of the Recommendation Rating." 
  * ^short = "How to cite the Recommendation Rating"
* date
  * ^definition = "The date (and optionally time) when the Recommendation Rating was published. The date should change when the substantive content of the Rating changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the Recommendation Rating and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the Recommendation Rating."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the Recommendation Rating and/or its content."
* approvalDate ^short = "When the Recommendation Rating was approved by publisher"
* lastReviewDate ^short = "When the Recommendation Rating was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the Recommendation Rating is about."
  * ^short = "The recommendation that is justified"
* content 1..*
  * ^definition = "A comment, rating, or classification of the recommendation."
  * ^short = "A comment, rating, or classification"
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "type"
* content ^slicing.rules = #open
* content contains strengthOfRecommendation 0..1 MS and directionOfRecommendation 0..1 MS and certaintyOfEvidence 0..1 MS
* content[strengthOfRecommendation].type = https://fevir.net/resources/CodeSystem/179423#strength-of-recommendation "Strength of Recommendation"
* content[directionOfRecommendation].type = https://fevir.net/resources/CodeSystem/179423#direction-of-recommendation "Direction of Recommendation"
* content[certaintyOfEvidence].type = https://fevir.net/resources/CodeSystem/179423#certainty-of-evidence "Certainty of Evidence"
* content.classifier from recommendation-justification-classifier (preferred)
* content.freeToShare
  * ^definition = "Acceptable to publicly share the content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the content"
