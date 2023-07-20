Profile: M11Section07
Parent: EvidenceReport
Id: m11-section-07
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section07 Profile is used for summary of Section 7 Discontinuation of Trial Intervention and Participant Withdrawal from Trial for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section07 1..1 MS
* category[section07].text = "Section 7 Discontinuation of Trial Intervention and Participant Withdrawal from Trial"
* section 4..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains discontinuation 1..1 MS and withdrawal 1..1 MS and lostToFollowUp 1..1 MS and trialStoppingRules 1..1 MS
* section[discontinuation].code.text = "7.1 Discontinuation of Trial Intervention"
* section[discontinuation]
  * text 1..1
* section[withdrawal].code.text = "7.2 Participant Withdrawal from the Trial"
* section[withdrawal]
  * text 1..1
* section[lostToFollowUp].code.text = "7.3 Lost to Follow-Up"
* section[lostToFollowUp]
  * text 1..1
* section[trialStoppingRules].code.text = "7.4 Trial Stopping Rules"
* section[trialStoppingRules]
  * text 1..1
