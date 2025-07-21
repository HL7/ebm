Profile: Rating
Parent: ArtifactAssessment
Id: rating
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The Rating Profile is used for classifier tags that may include quantitative ratings and may be created independently from Resource creators."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* extension contains $ext-author named author 0..*
* identifier
  * ^definition = "A formal identifier that is used to identify this Rating when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the Rating"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Rating."
* citeAs
  * ^definition = "Display of or reference to the bibliographic citation of the Rating." 
  * ^short = "How to cite the Rating"
* date
  * ^definition = "The date (and optionally time) when the Rating was published. The date should change when the substantive content of the Rating changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the Rating and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the Rating."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the Rating and/or its content."
* approvalDate ^short = "When the Rating was approved by publisher"
* lastReviewDate ^short = "When the Rating was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the Rating is about."
  * ^short = "The artifact that is rated"
* content 1..*
  * ^definition = "A rating of the artifact."
  * ^short = "A rating"
* content.quantity
  * ^short = "Quantitative rating"
  * ^definition = "A quantitative rating of the artifact."
  * value 1..1
* content.freeToShare
  * ^definition = "Acceptable to publicly share the rating content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the rating content"

