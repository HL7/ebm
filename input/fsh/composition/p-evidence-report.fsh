Profile: EvidenceReport
Parent: Composition
Id: evidence-report
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceReport Profile is used for a base structure (canonical resource management) for a report combining any number of Citation, Evidence, EvidenceVariable, EvidenceReport, and related Resources."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains $ext-versionAlgorithm named versionAlgorithm 0..1
* extension contains $ext-experimental named experimental 0..1
* extension contains $ext-description named description 0..1
* extension contains $ext-purpose named purpose 0..1
* extension contains $ext-copyright named copyright 0..1
* extension contains $ext-copyrightLabel named copyrightLabel 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/resource-approvalDate named approvalDate 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate named lastReviewDate 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod named effectivePeriod 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/additional-language named additionalLanguage 0..*
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-extended-contact-detail named extendedContactDetail 0..*
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-publicationDate named publicationDate 0..1
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* subject
  * ^comment = "Reference a Citation Resource, ArtifactAssessment Resource (Classification Profile), Group Resource (EvidenceReportSubject Profile), ReserchStudy Resource, or any Resource to define a subject of this EvidenceReport."
* attester.mode from http://terminology.hl7.org/ValueSet/contributor-role (preferred)
  * ^short = "reviewer | editor | endorser | informant | recorder"
* relatesTo
  * extension contains http://hl7.org/fhir/StructureDefinition/relatesto-classifier named classifier 0..1
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "type"
* relatesTo ^slicing.rules = #open
* relatesTo contains citeAs 0..1 and partOf 0..* and derivedFrom 0..* and specificationOf 0..* and dependsOn 0..* and supportedWith 0..* and similarTo 0..*
* relatesTo[citeAs].type = http://hl7.org/fhir/related-artifact-type#cite-as //TODO convert URL to http://terminology.hl7.org/CodeSystem/artifact-relationship-type
* relatesTo[partOf].type = http://hl7.org/fhir/related-artifact-type#part-of
* relatesTo[derivedFrom].type = http://hl7.org/fhir/related-artifact-type#derived-from
* relatesTo[specificationOf].type = http://hl7.org/fhir/related-artifact-type#specification-of
* relatesTo[dependsOn].type = http://hl7.org/fhir/related-artifact-type#depends-on
* relatesTo[supportedWith].type = http://hl7.org/fhir/related-artifact-type#supported-with
* relatesTo[similarTo].type = http://hl7.org/fhir/related-artifact-type#similar-to
* section.code from $ebm-evidence-report-section-code (extensible)