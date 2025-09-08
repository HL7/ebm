Profile: Guideline
Parent: EvidenceReportPackage
Id: guideline
Description: "Profile of Composition for Evidence Based Medicine IG. The Guideline Profile is used for the composition of a clinical practice guideline and may be tightly related to use of Recommendation Profile of Composition for related content."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains GuidelineRegistration named registrationStatus 0..*
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#Guideline "Guideline"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains recommendations 0..1 MS
* section[recommendations].code.coding 1..1
* section[recommendations].code.coding = https://fevir.net/resources/CodeSystem/179423#recommendations "Recommendations"
* section[recommendations]
  * entry only Reference(Recommendation)

