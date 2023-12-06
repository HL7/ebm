Profile: CompositeRating
Parent: ArtifactAssessment
Id: composite-rating
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The CompositeRating Profile is used for a composite rating or classification of a Resource that may be created following ratings or classifications by two or more parties."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* extension contains $ext-author named author 0..*
* identifier
  * ^definition = "A formal identifier that is used to identify this CompositeRating when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the CompositeRating"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Comment."
* citeAs[x]
  * ^definition = "Display of or reference to the bibliographic citation of the CompositeRating." 
  * ^short = "How to cite the CompositeRating"
* date
  * ^definition = "The date (and optionally time) when the CompositeRating was published. The date should change when the substantive content of the CompositeRating changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the CompositeRating and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the CompositeRating."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the CompositeRating and/or its content."
* approvalDate ^short = "When the CompositeRating was approved by publisher"
* lastReviewDate ^short = "When the CompositeRating was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the CompositeRating is about."
  * ^short = "The artifact that is rated or classified"
* content 1..*
  * ^definition = "A rating or classification of the artifact."
  * ^short = "A rating or classification"
* content.informationType
  * ^comment = "The code 'rating' or 'classification' will be the value in most instances. Other codes may be used for complex data with content.component use."
* content.freeToShare
  * ^definition = "Acceptable to publicly share the CompositeRating content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the CompositeRating content"
