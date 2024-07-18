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
* extension contains ArtifactApprovalDate named approvalDate 0..1
* extension contains ArtifactLastReviewDate named lastReviewDate 0..1
* extension contains ArtifactEffectivePeriod named effectivePeriod 0..1
* subject only Reference(Citation or Classification or EvidenceReportSubject or ResearchStudy)
* subject 0..1
  * ^comment = "Reference a single Citation Resource, EvidenceVariable Resource (EvidenceReportSubject Profile), or ReserchStudy Resource to define the subject of this EvidenceReport."
* attester.mode from EvidenceReportContributorRole (preferred)
  * ^short = "reviewer | editor | endorser | informant | recorder"
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "label"
* relatesTo ^slicing.rules = #open
* relatesTo contains citeAs 0..1 and partOf 0..* and derivedFrom 0..* and specificationOfOriginal 0..*
* relatesTo[citeAs].type = http://hl7.org/fhir/related-artifact-type#cite-as
* relatesTo[citeAs].label = "Cite as"
* relatesTo[partOf].type = http://hl7.org/fhir/related-artifact-type#part-of
* relatesTo[partOf].label = "Part of"
* relatesTo[derivedFrom].type = http://hl7.org/fhir/related-artifact-type#derived-from
* relatesTo[derivedFrom].label = "Derived from"
* relatesTo[specificationOfOriginal].type = http://hl7.org/fhir/related-artifact-type#specification-of
* relatesTo[specificationOfOriginal].label = "Original publication"
* section.code from $ebm-evidence-report-section-code (extensible)