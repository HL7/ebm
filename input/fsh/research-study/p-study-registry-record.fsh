Profile: StudyRegistryRecord
Parent: ResearchStudy
Id: study-registry-record
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The StudyRegistryRecord Profile is used for a scientific study record in a research study registry, such as ClinicalTrials.gov or the European Union Clinical Trial Information System (EU CTIS)."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* extension contains $ext-author named author 0..*
* extension contains RelatesToWithQuotation named RelatesToWithQuotation 0..*
* extension contains $ext-researchStudy-studyRegistration named studyRegistration 0..*
* extension contains ResearchStudyIsLowInterventionTrial named isLowInterventionTrial 0..1
* condition.text
  * extension contains http://hl7.org/fhir/StructureDefinition/translation|5.3.0-ballot-tc1 named translation 0..*