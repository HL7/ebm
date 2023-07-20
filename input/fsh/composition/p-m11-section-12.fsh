Profile: M11Section12
Parent: EvidenceReport
Id: m11-section-12
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section12 Profile is used for summary of Section 12 Appendix: Adverse Events and Serious Adverse Events -- Definitions, Severity, and Causality for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section12 1..1 MS
* category[section12].text = "Section 12 Appendix: Adverse Events and Serious Adverse Events -- Definitions, Severity, and Causality"
* section 4..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains adverseEventsDefinition 1..1 MS and seriousAdverseEventsDefinition 1..1 MS and severity 1..1 MS and causality 1..1 MS
* section[adverseEventsDefinition].code.text = "12.1 Further Details and Clarifications on the AE Definition"
* section[adverseEventsDefinition]
  * text 1..1
* section[seriousAdverseEventsDefinition].code.text = "12.2 Further Details and Clarifications on the SAE Definition"
* section[seriousAdverseEventsDefinition]
  * text 1..1
* section[severity].code.text = "12.3 Severity"
* section[severity]
  * text 1..1
* section[causality].code.text = "12.4 Causality"
* section[causality]
  * text 1..1
