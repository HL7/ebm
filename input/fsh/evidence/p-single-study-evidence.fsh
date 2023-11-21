Profile: SingleStudyEvidence
Parent: EvidenceR6
Id: single-study-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The SingleStudyEvidence Profile is used for evidence from single studies, explicitly expressing that no studies were synthesized." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains singleStudy 1..* MS
* useContext[singleStudy].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[singleStudy].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#SingleStudyEvidence "SingleStudyEvidence"
* synthesisType 1..1
* synthesisType = $cs-synthesis-type#NotApplicable "Not Applicable"