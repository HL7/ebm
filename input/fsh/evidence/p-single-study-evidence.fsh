Profile: SingleStudyEvidence
Parent: Evidence
Id: single-study-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The SingleStudyEvidence Profile is used for evidence from single studies, explicitly expressing that no studies were synthesized." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains singleStudy 1..* MS
* useContext[singleStudy].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[singleStudy].code.code = #program
* useContext[singleStudy].code.display = "Program"
* useContext[singleStudy].valueCodeableConcept.text = "single-study-evidence"
* synthesisType 1..1
* synthesisType = $cs-synthesis-type#NotApplicable "Not Applicable"