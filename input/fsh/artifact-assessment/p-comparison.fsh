Profile: Comparison
Parent: Adaptation
Id: comparison
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The Comparison Profile is used for assessments of similarities and differences between knowledge artifacts."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains ArtifactAssessmentCompared named comparedArtifact 0..*
* identifier
  * ^definition = "A formal identifier that is used to identify this Comparison when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the Comparison"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Comparison."
* citeAs[x]
  * ^definition = "Display of or reference to the bibliographic citation of the Comparison." 
  * ^short = "How to cite the Comparison"
* date
  * ^definition = "The date (and optionally time) when the Comparison was published. The date should change when the substantive content of the Comparison changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the Comparison and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the Comparison."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the Comparison and/or its content."
* approvalDate ^short = "When the Comparison was approved by publisher"
* lastReviewDate ^short = "When the Comparison was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the Comparison is about."
  * ^short = "The artifact that is being compared"
* content.freeToShare
  * ^definition = "Acceptable to publicly share the Comparison content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the content"
* workflowStatus
  * ^definition = "Indicates the workflow status of the comparison and adaptation process."
  * ^short = "The workflow status of the comparison and adaptation process"
* disposition
  * ^definition = "Indicates the disposition of the responsible party for approval of the comparison and adaptation."
  * ^short = "The disposition of the proposed adaptation"
