Profile: M11ReportSection12
Parent: EvidenceReport
Id: m11-report-section-12
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection12 Profile is used for section 12 (Supporting Details) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^copyright = "This Profile is developed to support the M11 Template. The ICH is the copyright holder for the M11 template and has not endorsed or sponsored this Profile."
* type.coding 1..1
* type.coding = http://loinc.org#35528-9 "Clinical trial protocol Clinical trial protocol"
* type.text = "CeSHarP Report"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains definitions 0..1
* category[definitions].coding 1..1
* category[definitions].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218666 "ICH M11 Protocol Section 12 APPENDIX: SUPPORTING DETAILS"
* category[definitions].text = "section12-supporting-details"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains definitions 1..1 MS
* section[definitions].title = "12 APPENDIX: SUPPORTING DETAILS"
* section[definitions].code.coding 1..1
* section[definitions].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218666 "ICH M11 Protocol Section 12 APPENDIX: SUPPORTING DETAILS"
* section[definitions].code.text = "section12-supporting-details"
* section[definitions]
  * section 3..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains clinicalLaboratoryTests 1..1 MS and regional 1..1 MS and priorAmendments 1..1 MS
  * section[clinicalLaboratoryTests].title = "12.1 Clinical Laboratory Tests"
  * section[clinicalLaboratoryTests].code.coding 1..1
  * section[clinicalLaboratoryTests].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218667 "ICH M11 Protocol Section 12.1 Clinical Laboratory Tests"
  * section[clinicalLaboratoryTests].code.text = "section12.1-clinical-laboratory-tests"
  * section[clinicalLaboratoryTests]
    * text 1..1
    * text ^comment = "Specify which laboratory parameters should be included in each clinical laboratory assessment panel (for example, for haematology, chemistry, urinalysis). A tabular presentation for such information is common. If applicable, include equations and references for locally calculated laboratory results. If not applicable, retain header and enter Not Applicable."
  * section[regional].title = "12.2 Country/Region-Specific Differences"
  * section[regional].code.coding 1..1
  * section[regional].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218668 "ICH M11 Protocol Section 12.2 Country/Region-Specific Differences"
  * section[regional].code.text = "section12.2-country-specific-differences"
  * section[regional]
    * text 1..1
    * text ^comment = "Although global clinical trial practices are increasingly harmonised, some country/ region-specific differences in requirements do exist (for example, document retention periods, contraception requirements).  Where differences in requirements cannot be reconciled, sponsors should explain how they will document and communicate country/region-specific differences (for example, by country/region-specific amendments or addenda). An alternative to country/region-specific amendments is to list the specific differences by country or countries in this section, including a reference to the relevant section of the protocol where the differing requirement applies. If not applicable, retain header and enter Not Applicable."
  * section[priorAmendments].title = "12.3 Prior Protocol Amendment(s)"
  * section[priorAmendments].code.coding 1..1
  * section[priorAmendments].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218669 "ICH M11 Protocol Section 12.3 Prior Protocol Amendment(s)"
  * section[priorAmendments].code.text = "section12.3-prior-protocol-amendments"
  * section[priorAmendments]
    * text 1..1
    * text ^comment = "Either enter value of {Not applicable. The protocol has not been amended.} or {Not applicable. This is the first protocol amendment.} or SEE TEMPLATE INSTRUCTIONS."