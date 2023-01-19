Profile: Classification
Parent: ArtifactAssessment
Id: classification
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The Classification Profile is used for classifier tags that may be created independently from Resource creators and may be used for search indexes."
* identifier
  * ^definition = "A formal identifier that is used to identify this Classification when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the Classification"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the Classification."
* citeAs[x]
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
* content
  * ^definition = "A classification of the artifact."
  * ^short = "A classification"
* content.informationType
  * ^comment = "The code 'classifier' will be the value in most instances. Other codes may be used for complex Classifications with content.component use."
* content.freeToShare
  * ^definition = "Acceptable to publicly share the classification content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the classification content"
* workflowStatus 0..0
* disposition 0..0
