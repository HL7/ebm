Profile: M11Section13
Parent: EvidenceReport
Id: m11-section-13
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section13 Profile is used for summary of Section 13 Appendix: Definitions and Supporting Operational Details for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section13 1..1 MS
* category[section13].text = "Section 13 Appendix: Definitions and Supporting Operational Details"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains definitions 1..1 MS
* section[definitions].title = "Appendix: Definitions and Supporting Operational Details"
* section[definitions].code.text = "section13-definitions"
* section[definitions]
  * section 4..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains contraception 1..1 MS and clinicalLaboratoryTests 1..1 MS and regional 1..1 MS and priorAmendments 1..1 MS
  * section[contraception].title = "Contraception"
  * section[contraception].code.text = "section13.1-contraception"
  * section[contraception]
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains contraceptionDefinitions 1..1 MS and contraceptionDetails 1..1 MS
    * section[contraceptionDefinitions].title = "Definitions Related to Childbearing Potential"
    * section[contraceptionDefinitions].code.text = "section13.1.1-contraception-definitions"
    * section[contraceptionDefinitions]
      * text 1..1
      * text ^comment = "Specify the definitions of Participant of childbearing potential and Participant of non-childbearing potential, or state Not Applicable."
    * section[contraceptionDetails].title = "Contraception"
    * section[contraceptionDetails].code.text = "section13.1.2-contraception-details"
    * section[contraceptionDetails]
      * text 1..1
      * text ^comment = "Specify the contraceptive methods required and duration of use, or state Not Applicable."
  * section[clinicalLaboratoryTests].title = "Clinical Laboratory Tests"
  * section[clinicalLaboratoryTests].code.text = "section13.2-clinical-laboratory-tests"
  * section[clinicalLaboratoryTests]
    * text 1..1
    * text ^comment = "Specify which laboratory parameters should be included in each clinical laboratory assessment panel (for example, for haematology, chemistry, urinalysis). A tabular presentation for such information is common. If applicable, include equations and references for locally calculated laboratory results. If not applicable, retain header and enter Not Applicable."
  * section[regional].title = "Country/Region-Specific Differences"
  * section[regional].code.text = "section13.3-country-specific-differences"
  * section[regional]
    * text 1..1
    * text ^comment = "Although global clinical trial practices are increasingly harmonised, some country/ region-specific differences in requirements do exist (for example, document retention periods, contraception requirements).  Where differences in requirements cannot be reconciled, sponsors should explain how they will document and communicate country/region-specific differences (for example, by country/region-specific amendments or addenda). An alternative to country/region-specific amendments is to list the specific differences by country or countries in this section, including a reference to the relevant section of the protocol where the differing requirement applies. If not applicable, retain header and enter Not Applicable."
  * section[priorAmendments].title = "Prior Protocol Amendment(s)"
  * section[priorAmendments].code.text = "section13.4-prior-protocol-amendments"
  * section[priorAmendments]
    * text 1..1
    * text ^comment = "Either enter value of {Not applicable. The protocol has not been amended.} or {Not applicable. This is the first protocol amendment.} or SEE TEMPLATE INSTRUCTIONS."
