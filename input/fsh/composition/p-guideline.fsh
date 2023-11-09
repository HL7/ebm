Profile: Guideline
Parent: EvidenceReport
Id: guideline
Description: "Profile of Composition for Evidence Based Medicine IG. The Guideline Profile is used for the composition of a clinical practice guideline and may be tightly related to use of Recommendation Profile of Composition for related content."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains guideline 1..1 MS
* category[guideline].text = "Guideline"
* section 1..6
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section contains introduction 0..1 MS and recommendations 0..1 MS and text 0..1 MS and methods 0..1 MS and acknowledgements 0..1 MS and appendices 0..1 MS
* section[introduction].code.text = "Introduction"
* section[recommendations].code.text = "Recommendations"
* section[recommendations]
  * entry only Reference(Recommendation)
* section[text].code.text = "Text"
* section[methods].code.text = "Methods"
* section[acknowledgements].code.text = "Acknowledgements"
* section[appendices].code.text = "Appendices"
