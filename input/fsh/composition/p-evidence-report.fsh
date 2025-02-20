Profile: EvidenceReport
Parent: Composition
Id: evidence-report
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceReport Profile is used for a base structure (canonical resource management) for a report combining any number of Citation, Evidence, EvidenceVariable, EvidenceReport, and related Resources."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm named versionAlgorithm 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-experimental named experimental 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-description named description 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-purpose named purpose 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-copyright named copyright 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-copyrightLabel named copyrightLabel 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-approvalDate named approvalDate 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-lastReviewDate named lastReviewDate 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-effectivePeriod named effectivePeriod 0..1
* subject
  * ^comment = "Reference a Citation Resource, ArtifactAssessment Resource (Classification Profile), Group Resource (EvidenceReportSubject Profile), ReserchStudy Resource, or any Resource to define a subject of this EvidenceReport."
* attester.mode from EvidenceReportContributorRole (preferred)
  * ^short = "reviewer | editor | endorser | informant | recorder"
* relatesTo
  * extension contains TargetUri named targetUri 0..1
  * extension contains TargetCanonical named targetCanonical 0..1
  * extension contains TargetReference named targetReference 0..1
  * extension contains TargetAttachment named targetAttachment 0..1
  * extension contains TargetMarkdown named targetMarkdown 0..1
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "type"
* relatesTo ^slicing.rules = #open
* relatesTo contains citeAs 0..1 and partOf 0..* and derivedFrom 0..* and specificationOf 0..* and dependsOn 0..*
* relatesTo[citeAs].type = http://hl7.org/fhir/related-artifact-type#cite-as
* relatesTo[partOf].type = http://hl7.org/fhir/related-artifact-type#part-of
* relatesTo[derivedFrom].type = http://hl7.org/fhir/related-artifact-type#derived-from
* relatesTo[specificationOf].type = http://hl7.org/fhir/related-artifact-type#specification-of
* relatesTo[dependsOn].type = http://hl7.org/fhir/related-artifact-type#depends-on
* section.code from $ebm-evidence-report-section-code (extensible)