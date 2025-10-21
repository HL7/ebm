Profile: EvidenceAssessment
Parent: ArtifactAssessment
Id: evidence-assessment
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The EvidenceAssessment Profile is used for expression of any aspect of the certainty or quality of an Evidence artifact."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* extension contains $ext-author named author 0..*
* extension contains $ext-useContext named useContext 0..*
* extension contains RelatesToWithQuotation named RelatesToWithQuotation 0..*
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* identifier
  * ^definition = "A formal identifier that is used to identify this EvidenceAssessment when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the EvidenceAssessment"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the EvidenceAssessment."
* citeAs
  * ^definition = "Display of or reference to the bibliographic citation of the EvidenceAssessment." 
  * ^short = "How to cite the EvidenceAssessment"
* date
  * ^definition = "The date (and optionally time) when the EvidenceAssessment was published. The date should change when the substantive content of the EvidenceAssessment changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the EvidenceAssessment and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the EvidenceAssessment."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the EvidenceAssessment and/or its content."
* approvalDate ^short = "When the EvidenceAssessment was approved by publisher"
* lastReviewDate ^short = "When the EvidenceAssessment was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the EvidenceAssessment is about."
  * ^short = "The artifact that is rated"
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "type"
* content ^slicing.rules = #open
* content
  * extension contains RelatesToWithQuotation named RelatesToWithQuotation 0..*
  * component
    * extension contains RelatesToWithQuotation named RelatesToWithQuotation 0..*
* content contains ratingSystem 0..1 MS and overall 0..1 and riskOfBias 0..1
* content[ratingSystem].type = https://fevir.net/resources/CodeSystem/179423#rating-system "Rating System"
* content[ratingSystem].classifier from evidence-rating-system-classifier (extensible)
* content[overall].type = http://terminology.hl7.org/CodeSystem/certainty-type#Overall "Overall certainty"
* content[overall].classifier from http://terminology.hl7.org/CodeSystem/certainty-rating (extensible)
* content[overall].component.type from http://terminology.hl7.org/CodeSystem/certainty-type (extensible)
* content[overall].component.classifier from http://terminology.hl7.org/CodeSystem/certainty-rating (extensible)
* content[riskOfBias].type = http://terminology.hl7.org/CodeSystem/certainty-type#RiskOfBias "Risk of bias"
* content.freeToShare
  * ^definition = "Acceptable to publicly share the EvidenceAssessment content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the EvidenceAssessment content"