Profile: Comment
Parent: ArtifactAssessment
Id: comment
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The Comment Profile is used for comments about a Resource that may be created independently from Resource creators."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* extension contains $ext-author named author 0..*
* identifier
  * ^definition = "A formal identifier that is used to identify this Comment when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the Comment"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Comment."
* citeAs
  * ^definition = "Display of or reference to the bibliographic citation of the Comment." 
  * ^short = "How to cite the Comment"
* date
  * ^definition = "The date (and optionally time) when the Comment was published. The date should change when the substantive content of the Comment changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the Comment and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the Comment."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the Comment and/or its content."
* approvalDate ^short = "When the Comment was approved by publisher"
* lastReviewDate ^short = "When the Comment was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the Comment is about."
  * ^short = "The artifact that is commented upon"
* content 1..*
  * ^definition = "A comment about the artifact."
  * ^short = "A comment"
* content.freeToShare
  * ^definition = "Acceptable to publicly share the Comment content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the Comment content"
* workflowStatus 0..0
* disposition 0..0
