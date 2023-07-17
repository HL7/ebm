Profile: M11Section05
Parent: EvidenceReport
Id: m11-section-05
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section05 Profile is used for summary of Section 5 Trial Population for the Interntaional Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section05 1..1 MS
* category[section05].text = "Section 5 Trial Population"
* section 6..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains description 1..1 MS and rationale 1..1 MS and inclusionCriteria 1..1 MS and exclusionCriteria 1..1 MS and lifestyle 0..1 MS and screenFailures 0..1 MS
* section[description].code.text = "5.1 Selection of Trial Population"
* section[description]
  * text 1..1
  * entry only Reference(CohortDefinition)
* section[rationale].code.text = "5.2 Rationale for Trial Population"
* section[rationale]
  * text 1..1
  * entry only Reference(CohortDefinition)
* section[inclusionCriteria].code.text = "5.3 Inclusion Criteria"
* section[inclusionCriteria]
  * text 1..1
  * entry only Reference(CohortDefinition)
* section[exclusionCriteria].code.text = "5.4 Exclusion Criteria"
* section[exclusionCriteria]
  * text 1..1
  * entry only Reference(CohortDefinition)
* section[lifestyle].code.text = "5.5 Lifestyle Considerations"
* section[lifestyle]
  * text 1..1
* section[screenFailures].code.text = "5.6 Screen Failures"
* section[screenFailures]
  * text 1..1
  