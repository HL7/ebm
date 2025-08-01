Profile: Classification
Parent: ArtifactAssessment
Id: classification
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The Classification Profile is used for classifier tags that may be created independently from Resource creators and may be used for search indexes."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* extension contains $ext-author named author 0..*
* identifier
  * ^definition = "A formal identifier that is used to identify this Classification when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the Classification"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Classification."
* citeAs
  * ^definition = "Display of or reference to the bibliographic citation of the Classification." 
  * ^short = "How to cite the Classification"
* date
  * ^definition = "The date (and optionally time) when the Classification was published. The date should change when the substantive content of the Classification changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the Classification and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the Classification."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the Classification and/or its content."
* approvalDate ^short = "When the Classification was approved by publisher"
* lastReviewDate ^short = "When the Classification was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the Classification is about."
  * ^short = "The artifact that is classified"
* content 1..*
  * ^definition = "A classification of the artifact."
  * ^short = "A classification"
* content.freeToShare
  * ^definition = "Acceptable to publicly share the classification content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the classification content"

