Profile: M11Section14
Parent: EvidenceReport
Id: m11-section-14
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section14 Profile is used for summary of Section 14 Appendix: Glossary of Terms for the Interntaional Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section14 1..1 MS
* category[section14].text = "Section 14 Appendix: Glossary of Terms"
* section 1..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains glossary 1..1 MS
* section[glossary].code.text = "14 Glossary of Terms"
* section[glossary]
  * text 1..1
  * entry only Reference(ValueSet or CodeSystem)
