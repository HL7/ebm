Profile: CertaintyOfEvidence
Parent: ArtifactAssessment
Id: certainty-of-evidence
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The CertaintyOfEvidence Profile is used for expression of the certainty (also called quality or confidence in the estimates) of an Evidence artifact." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* identifier
  * ^definition = "A formal identifier that is used to identify this CertaintyOfEvidence when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the CertaintyOfEvidence"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the CertaintyOfEvidence."
* citeAs[x]
  * ^definition = "Display of or reference to the bibliographic citation of the CertaintyOfEvidence." 
  * ^short = "How to cite the CertaintyOfEvidence"
* date
  * ^definition = "The date (and optionally time) when the CertaintyOfEvidence was published. The date should change when the substantive content of the CertaintyOfEvidence changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the CertaintyOfEvidence and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the CertaintyOfEvidence."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the CertaintyOfEvidence and/or its content."
* approvalDate ^short = "When the CertaintyOfEvidence was approved by publisher"
* lastReviewDate ^short = "When the CertaintyOfEvidence was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the CertaintyOfEvidence is about."
  * ^short = "The artifact that is rated"
* content
  * ^definition = "A rating or classification of the artifact."
  * ^short = "A rating"
* content.informationType
  * ^comment = "The code 'rating' will be the value in most instances. Other codes may be used for complex CertaintyOfEvidence with content.component use."
* content.type from http://hl7.org/fhir/ValueSet/certainty-type (extensible)
* content.classifier from http://hl7.org/fhir/ValueSet/certainty-rating (extensible)
* content.freeToShare
  * ^definition = "Acceptable to publicly share the CertaintyOfEvidence content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the CertaintyOfEvidence content"