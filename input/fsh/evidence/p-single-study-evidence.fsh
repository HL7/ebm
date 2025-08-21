Profile: SingleStudyEvidence
Parent: Evidence
Id: single-study-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The SingleStudyEvidence Profile is used for evidence from single studies, explicitly expressing that no studies were synthesized." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* synthesisType 1..1
* synthesisType = $cs-synthesis-type#NotApplicable "not applicable"