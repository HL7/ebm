Profile: M11Section04
Parent: EvidenceReport
Id: m11-section-04
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section04 Profile is used for summary of Section 4 Trial Design for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section04 1..1 MS
* category[section04].text = "Section 4 Trial Design"
* section 4..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains description 1..1 MS and rationale 1..1 MS and access 0..1 MS and startEnd 1..1 MS
* section[description].code.text = "4.1 Description of Trial Design"
* section[description]
  * text 1..1
* section[rationale].code.text = "4.2 Rationale for Trial Design"
* section[rationale]
  * text 1..1
* section[access].code.text = "4.3 Access to Trial Intervention After End of Trial"
* section[access]
  * text 1..1
* section[startEnd].code.text = "4.4 Start of Trial and End of Trial"
* section[startEnd]
  * text 1..1
  