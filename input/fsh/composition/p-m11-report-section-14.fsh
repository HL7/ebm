Profile: M11ReportSection14
Parent: EvidenceReport
Id: m11-report-section-14
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection14 Profile is used for section 14 (References) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains references 0..1
* category[references].coding 1..1
* category[references].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218671 "ICH M11 Protocol Section 14 APPENDIX: REFERENCES"
* category[references].text = "section14-references"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains references 1..1 MS
* section[references].title = "Appendix: References"
* section[references].code.coding 1..1
* section[references].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218671 "ICH M11 Protocol Section 14 APPENDIX: REFERENCES"
* section[references].code.text = "section14-references"
* section[references]
  * text 1..1
  * text ^comment = "References should be listed in a common format that includes all relevant information to identify the source and date published.  If not published, this should be clearly indicated."
  * entry only Reference(Citation or DocumentReference)