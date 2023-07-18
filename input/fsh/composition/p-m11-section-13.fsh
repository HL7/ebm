Profile: M11Section13
Parent: EvidenceReport
Id: m11-section-13
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section13 Profile is used for summary of Section 13 Appendix: Definitions and Supporting Operational Details for the Interntaional Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section13 1..1 MS
* category[section13].text = "Section 13 Appendix: Definitions and Supporting Operational Details"
* section 4..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains contraception 1..1 MS and clinicalLaboratoryTests 1..1 MS and regional 1..1 MS and priorAmendments 1..1 MS
* section[contraception].code.text = "13.1 Contraception and Pregnancy Testing"
* section[contraception]
  * text 1..1
* section[clinicalLaboratoryTests].code.text = "13.2 Clinical Laboratory Tests"
* section[clinicalLaboratoryTests]
  * text 1..1
* section[regional].code.text = "13.3 Country/Region-Specific Differences"
* section[regional]
  * text 1..1
* section[priorAmendments].code.text = "13.4 Prior Protocol Amendments"
* section[priorAmendments]
  * text 1..1
