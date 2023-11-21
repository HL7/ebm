Profile: EvidenceReport
Parent: Composition
Id: evidence-report
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceReport Profile is used for a base structure (canonical resource management) for a report combining any number of Citation, Evidence, EvidenceVariable, EvidenceReport, and related Resources."
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm named versionAlgorithm 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-experimental named experimental 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-description named description 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-purpose named purpose 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-copyright named copyright 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-copyrightLabel named copyrightLabel 0..1
* extension contains ArtifactApprovalDate named approvalDate 0..1
* extension contains ArtifactLastReviewDate named lastReviewDate 0..1
* extension contains ArtifactEffectivePeriod named effectivePeriod 0..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#EvidenceReport "EvidenceReport"
* subject only Reference(Citation or Classification or EvidenceReportSubject or ResearchStudy)
* subject 0..1
  * ^comment = "Reference a single Citation Resource, EvidenceVariable Resource (EvidenceReportSubject Profile), or ReserchStudy Resource to define the subject of this EvidenceReport."
* attester.mode from http://hl7.org/fhir/ValueSet/contributor-role (preferred)
  * ^short = "reviewer | editor | endorser | informant"
* section.code from $ebm-evidence-report-section-code (extensible)