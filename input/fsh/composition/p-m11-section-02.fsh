Profile: M11Section02
Parent: EvidenceReport
Id: m11-section-02
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section02 Profile is used for summary of Section 2 Introduction for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section02 1..1 MS
* category[section02].text = "Section 2 Introduction"
* section 2..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains purposeOfTrial 1..1 MS and benefitsAndRisks 1..1 MS
* section[purposeOfTrial].code.text = "2.1 Purpose of Trial"
* section[purposeOfTrial]
  * text 1..1
* section[benefitsAndRisks].code.text = "2.2 Summary of Benefits and Risks"
* section[benefitsAndRisks]
  * section 3..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains benefitSummary 1..1 MS and riskSummary 1..1 and overallBenefitRisk 1..1
  * section[benefitSummary].code.text = "Benefit Summary"
  * section[benefitSummary]
    * text 1..1
  * section[riskSummary].code.text = "Risk Summary and Mitigation Strategy"
  * section[riskSummary]
    * text 1..1
  * section[overallBenefitRisk].code.text = "Overall Benefit:Risk Conclusion"
  * section[overallBenefitRisk]
    * text 1..1
 