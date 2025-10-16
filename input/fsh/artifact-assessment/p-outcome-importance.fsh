Profile: OutcomeImportance
Parent: ArtifactAssessment
Id: outcome-importance
Description: "Profile of ArtifactAssessment for Evidence Based Medicine IG. The OutcomeImportance Profile is used for expression of the relative importance of an outcome. The outcome is typically expressed with an EvidenceVariable Resource and may use the VariableDefinition Profile of EvidenceVariable (or OutcomeDefinition Profile of Group)." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains $ext-url named url 0..1
* extension contains $ext-description named description 0..1
* extension contains $ext-author named author 0..*
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* identifier
  * ^definition = "A formal identifier that is used to identify this OutcomeImportance when it is represented in other formats, or referenced in a specification, model, design or an instance." 
  * ^short = "Additional identifier for the OutcomeImportance"
  * ^comment = "Typically, this is used for identifiers that can be used in systems outside of FHIR, where it is not sufficient to use the logical URI."
  * ^requirements = "Allows externally provided and/or usable business identifiers to be easily associated with the OutcomeImportance."
* citeAs
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
* content 1..*
  * ^definition = "A rating or classification of the artifact."
  * ^short = "A rating"
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "type"
* content ^slicing.rules = #open
* content contains desirability 0..1 MS and relativeImportance 1..1 MS and forWhom 0..1
* content[desirability].type = https://fevir.net/resources/CodeSystem/179423#outcome-desirability "Outcome Desirability"
* content[desirability].classifier from desirability (extensible)
* content[relativeImportance].type = https://fevir.net/resources/CodeSystem/179423#relative-importance "Relative Importance"
* content[relativeImportance].quantity 0..1
  * ^short = "Percentage of importance of reference outcome" 
  * ^definition = "A quantitative rating of the relative importance of the outcome."
* content[relativeImportance].quantity.value 1..1
  * ^comment = "The value must be 0 (no importance) or a positive decimal. The value of 100 represents the importance of the reference outcome. A value greater than 100 represents exceptionally high importance that is higher than the importance of the reference outcome."
* content[relativeImportance].quantity.comparator 0..0
* content[relativeImportance].quantity.unit 1..1
* content[relativeImportance].quantity.unit = "%"
* content[relativeImportance].quantity.system 1..1
* content[relativeImportance].quantity.system = "http://unitsofmeasure.org"
* content[relativeImportance].quantity.code 1..1
* content[relativeImportance].quantity.code = #%
* content[forWhom].type = https://fevir.net/resources/CodeSystem/179423#population "Population"
* content[forWhom].relatesTo.type = #supports
* content[forWhom].relatesTo.targetReference only Reference(Group or Patient or Practitioner or PractitionerRole or RelatedPerson or CareTeam or Device or HealthcareService or Organization)
* content.freeToShare
  * ^definition = "Acceptable to publicly share the OutcomeImportance content, specific to the associated content instance"
  * ^short = "Acceptable to publicly share the OutcomeImportance content"
* workflowStatus 0..0
* disposition 0..0