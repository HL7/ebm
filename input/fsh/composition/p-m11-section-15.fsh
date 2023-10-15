Profile: M11Section15
Parent: EvidenceReport
Id: m11-section-15
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section15 Profile is used for summary of Section 15 Appendix: References for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section15 1..1 MS
* category[section15].text = "Section 15 Appendix: References"
* section 1..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains references 1..1 MS
* section[references].title = "Appendix: References"
* section[references].code.text = "section15-references"
* section[references]
  * text 1..1
  * text ^comment = "References should be listed in a common format that includes all relevant information to identify the source and date published.  If not published, this should be clearly indicated."
  * entry only Reference(Citation)
