Profile: OutcomeImportance
Parent: ArtifactAssessment
Id: outcome-importance
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The OutcomeImportance Profile is used for expression of the relative importance of an outcome. The outcome is typically expressed with an EvidenceVariable Resource and may use the OutcomeDefinition Profile." 
* identifier
  * ^definition = "A formal identifier that is used to identify this OutcomeImportance when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the OutcomeImportance"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the OutcomeImportance."
* citeAs[x]
  * ^definition = "Display of or reference to the bibliographic citation of the OutcomeImportance." 
  * ^short = "How to cite the OutcomeImportance"
* date
  * ^definition = "The date (and optionally time) when the OutcomeImportance was published. The date should change when the substantive content of the OutcomeImportance changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the OutcomeImportance and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the OutcomeImportance."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the OutcomeImportance and/or its content."
* approvalDate ^short = "When the OutcomeImportance was approved by publisher"
* lastReviewDate ^short = "When the OutcomeImportance was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the OutcomeImportance is about."
  * ^short = "The artifact that is rated"
* content
  * ^definition = "A rating or classification of the artifact."
  * ^short = "A rating"
* content.informationType
  * ^comment = "The code 'rating' will be the value in most instances. Other codes may be used for complex OutcomeImportance with content.component use."
* content.freeToShare
  * ^definition = "Acceptable to publicly share the OutcomeImportance content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the OutcomeImportance content"
* workflowStatus 0..0
* disposition 0..0