Profile: RiskOfBias
Parent: ArtifactAssessment
Id: risk-of-bias
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The RiskOfBias Profile is used for expression of the assessment of the threats to validity (or risk of bias) of an Evidence artifact or an artifact consisting of Evidence or the plan to create Evidence." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* identifier
  * ^definition = "A formal identifier that is used to identify this RiskOfBias when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the RiskOfBias"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the RiskOfBias."
* citeAs[x]
  * ^definition = "Display of or reference to the bibliographic citation of the RiskOfBias." 
  * ^short = "How to cite the RiskOfBias"
* date
  * ^definition = "The date (and optionally time) when the RiskOfBias was published. The date should change when the substantive content of the RiskOfBias changes."
  * ^comment = ""
* copyright
  * ^definition = "A copyright statement relating to the RiskOfBias and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the RiskOfBias."
  * ^requirements = "Consumers must be able to determine any legal restrictions on the use of the RiskOfBias and/or its content."
* approvalDate ^short = "When the RiskOfBias was approved by publisher"
* lastReviewDate ^short = "When the RiskOfBias was last reviewed"
* artifact[x]
  * ^definition = "A reference to a resource, canonical resource, or non-FHIR resource which the RiskOfBias is about."
  * ^short = "The artifact that is rated"
* artifactReference only Reference(Evidence or Composition or ResearchStudy or Citation)
* content
  * ^definition = "A rating or classification of the artifact."
  * ^short = "A rating"
* content.informationType
  * ^comment = "The code 'rating' will be the value in most instances. Other codes may be used for complex RiskOfBias with content.component use."
* content.type from risk-of-bias-type (extensible)
* content.classifier from http://hl7.org/fhir/ValueSet/certainty-rating (extensible) //TODO - change to from risk-of-bias-classifier from $sevco when ready
* content.freeToShare
  * ^definition = "Acceptable to publicly share the RiskOfBias content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the RiskOfBias content"