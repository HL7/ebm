Profile: M11ReportSection03
Parent: EvidenceReport
Id: m11-report-section-03
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection03 Profile is used for section 3 (Trial Objectives and Associated Estimands) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains estimands 0..1
* category[estimands].coding 1..1
* category[estimands].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218526 "ICH M11 Protocol Section 3 TRIAL OBJECTIVES AND ASSOCIATED ESTIMANDS"
* category[estimands].text = "section3-estimands"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains estimands 1..1 MS
* section[estimands].title = "3 TRIAL OBJECTIVES AND ASSOCIATED ESTIMANDS"
* section[estimands].code.coding 1..1
* section[estimands].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218526 "ICH M11 Protocol Section 3 TRIAL OBJECTIVES AND ASSOCIATED ESTIMANDS"
* section[estimands].code.text = "section3-estimands"
* section[estimands]
  * entry only Reference(StudyDesign)
