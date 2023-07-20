Profile: M11Section10
Parent: EvidenceReport
Id: m11-section-10
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section10 Profile is used for summary of Section 10 General Considerations: Regulatory, Ethical, and Trial Oversight for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section10 1..1 MS
* category[section10].text = "Section 10 General Considerations: Regulatory, Ethical, and Trial Oversight"
* section 5..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains regulatory 1..1 MS and committees 1..1 MS and informedConsent 1..1 MS and dataProtection 1..1 MS and earlyTermination 1..1 MS
* section[regulatory].code.text = "10.1 Regulatory and Ethical Considerations"
* section[regulatory]
  * text 1..1
* section[committees].code.text = "10.2 Committees"
* section[committees]
  * text 1..1
* section[informedConsent].code.text = "10.3 Informed Consent Process"
* section[informedConsent]
  * text 1..1
* section[dataProtection].code.text = "10.4 Data Protection"
* section[dataProtection]
  * text 1..1
* section[earlyTermination].code.text = "10.5 Early Site Closure or Trial Termination"
* section[earlyTermination]
  * text 1..1
