Profile: Guideline
Parent: EvidenceReport
Id: guideline
Description: "Profile of Composition for Evidence Based Medicine IG. The Guideline Profile is used for the composition of a clinical practice guideline and may be tightly related to use of Recommendation Profile of Composition for related content."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category contains guideline 1..1 MS
* category[guideline].coding = https://fevir.net/resources/CodeSystem/179423#Guideline "Guideline"
* section 1..6
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #closed
* section contains introduction 0..1 MS and recommendations 0..1 MS and text 0..1 MS and methods 0..1 MS and acknowledgements 0..1 MS and appendices 0..1 MS
* section[introduction].code.coding = https://fevir.net/resources/CodeSystem/179423#introduction "Introduction"
* section[recommendations].code.coding = https://fevir.net/resources/CodeSystem/179423#recommendations "Recommendations"
* section[recommendations]
  * entry only Reference(Recommendation)
* section[text].code.coding = https://fevir.net/resources/CodeSystem/179423#text "Text"
* section[methods].code.coding = https://fevir.net/resources/CodeSystem/179423#methods "Methods"
* section[acknowledgements].code.coding = https://fevir.net/resources/CodeSystem/179423#acknowledgements "Acknowledgements"
* section[appendices].code.coding = https://fevir.net/resources/CodeSystem/179423#appendices "Appendices"
