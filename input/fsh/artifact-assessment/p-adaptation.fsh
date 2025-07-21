Profile: Adaptation
Parent: ArtifactAssessment
Id: adaptation
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The Adaptation Profile is used for assessments of a knowledge artifact that are used to create a new knowledge artifact through acceptance, rejection or modification of the assessed artifact."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* extension contains $ext-author named author 0..*
* identifier
  * ^definition = "A formal identifier that is used to identify this Adaptation when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the Adaptation"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Adaptation."
* citeAs
  * ^definition = "Display of or reference to the bibliographic citation of the Adaptation." 
  * ^short = "How to cite the Adaptation"
* date
  * ^definition = "The date (and optionally time) when the Adaptation was published. The date should change when the substantive content of the Adaptation changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the Adaptation and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the Adaptation."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the Adaptation and/or its content."
* approvalDate ^short = "When the Adaptation was approved by publisher"
* lastReviewDate ^short = "When the Adaptation was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the Adaptation is about."
  * ^short = "The artifact that is being adapted"
* content
  * ^definition = "A comment, rating or classification of the artifact."
  * ^short = "A comment, rating or classification"
* content.freeToShare
  * ^definition = "Acceptable to publicly share the Adaptation content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the content"
* workflowStatus
  * ^definition = "Indicates the workflow status of the adaptation process."
  * ^short = "The workflow status of the adaptation process"
* disposition
  * ^definition = "Indicates the disposition of the responsible party for approval of the adaptation."
  * ^short = "The disposition of the proposed adaptation"
