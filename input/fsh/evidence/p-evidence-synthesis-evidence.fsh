Profile: EvidenceSynthesisEvidence
Parent: EvidenceR6
Id: evidence-synthesis-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The EvidenceSynthesisEvidence Profile is used for evidence that is combined from two or more studies, explicitly expressing the method by which evidence was synthesized." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains synthesis 1..* MS
* useContext[synthesis].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[synthesis].code.code = #program
* useContext[synthesis].code.display = "Program"
* useContext[synthesis].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#EvidenceSynthesisEvidence "EvidenceSynthesisEvidence"
* synthesisType 1..1