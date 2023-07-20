Profile: M11Section11
Parent: EvidenceReport
Id: m11-section-11
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section11 Profile is used for summary of Section 11 General Considerations: Risk Management and Quality Assurance for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section11 1..1 MS
* category[section11].text = "Section 11 General Considerations: Risk Management and Quality Assurance"
* section 3..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains toleranceLimits 1..1 MS and dataQA 1..1 MS and sourceData 1..1 MS
* section[toleranceLimits].code.text = "11.1 Quality Tolerance Limits"
* section[toleranceLimits]
  * text 1..1
* section[dataQA].code.text = "11.2 Data Quality Assurance"
* section[dataQA]
  * text 1..1
* section[sourceData].code.text = "11.3 Source Data"
* section[sourceData]
  * text 1..1
