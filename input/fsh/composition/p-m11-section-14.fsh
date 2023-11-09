Profile: M11Section14
Parent: EvidenceReport
Id: m11-section-14
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section14 Profile is used for summary of Section 14 Appendix: Glossary of Terms for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section14 1..1 MS
* category[section14].text = "Section 14 Appendix: Glossary of Terms"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains glossary 1..1 MS
* section[glossary].title = "Appendix: Glossary of Terms and Abbreviations"
* section[glossary].code.text = "section14-glossary"
* section[glossary]
  * text 1..1
  * text ^comment = "Define abbreviations and other terms used in the protocol. A tabular presentation is common and may serve as the definition at first use."
  * entry only Reference(ValueSet or CodeSystem)
