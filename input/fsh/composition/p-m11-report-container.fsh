Profile: M11ReportContainer
Parent: EvidenceReport
Id: m11-report-container
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportContainer Profile is used for a complete report for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^copyright = "This Profile is developed to support the M11 Template. The ICH is the copyright holder for the M11 template and has not endorsed or sponsored this Profile."
* type.coding 1..1
* type.coding = http://loinc.org#35528-9 "Clinical trial protocol Clinical trial protocol"
* type.text = "CeSHarP Report"
* section 2..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains titlepage 1..1 MS and section01 1..1 MS and section02 1..1 MS and section03 1..1 MS and section04 1..1 MS and section05 1..1 MS and section06 1..1 MS and section07 1..1 MS and section08 1..1 MS and section09 1..1 MS and section10 1..1 MS and section11 1..1 MS and section12 1..1 MS and section13 1..1 MS and section14 1..1 MS
* section[titlepage].title = "Title Page"
* section[titlepage].code.coding 1..1
* section[titlepage].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C222769 "ICH M11 Protocol Section Title Page"
* section[titlepage].code.text = "section0-title-page"
* section[titlepage]
  * entry only Reference(StudyDesign)
* section[section01].code.coding 1..1
* section[section01].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218514 "ICH M11 Protocol Section 1 PROTOCOL SUMMARY"
* section[section01].code.text = "section1-protocol-summary"
* section[section01]
  * entry only Reference(M11ReportSection01)
* section[section02].code.coding 1..1
* section[section02].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218520 "ICH M11 Protocol Section 2 INTRODUCTION"
* section[section02].code.text = "section2-introduction"
* section[section02]
  * entry only Reference(M11ReportSection02)
* section[section03].code.coding 1..1
* section[section03].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218526 "ICH M11 Protocol Section 3 TRIAL OBJECTIVES AND ASSOCIATED ESTIMANDS"
* section[section03].code.text = "section3-estimands"
* section[section03]
  * entry only Reference(M11ReportSection03)
* section[section04].code.coding 1..1
* section[section04].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218533 "ICH M11 Protocol Section 4 TRIAL DESIGN"
* section[section04].code.text = "section4-trial-design"
* section[section04]
  * entry only Reference(M11ReportSection04)
* section[section05].code.coding 1..1
* section[section05].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218547 "ICH M11 Protocol Section 5 TRIAL POPULATION"
* section[section05].code.text = "section5-trial-population"
* section[section05]
  * entry only Reference(M11ReportSection05)
* section[section06].code.coding 1..1
* section[section06].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218560 "ICH M11 Protocol Section 6 TRIAL INTERVENTION AND CONCOMITANT THERAPY"
* section[section06].code.text = "section6-trial-intervention"
* section[section06]
  * entry only Reference(M11ReportSection06)
* section[section07].code.coding 1..1
* section[section07].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218583 "ICH M11 Protocol Section 7 PARTICIPANT DISCONTINUATION OF TRIAL INTERVENTION AND DISCONTINUATION OR WITHDRAWAL FROM TRIAL"
* section[section07].code.text = "section7-participant-discontinuation"
* section[section07]
  * entry only Reference(M11ReportSection07)
* section[section08].code.coding 1..1
* section[section08].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218590 "ICH M11 Protocol Section 8 TRIAL ASSESSMENTS AND PROCEDURES"
* section[section08].code.text = "section8-assessments"
* section[section08]
  * entry only Reference(M11ReportSection08)
* section[section09].code.coding 1..1
* section[section09].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218608 "ICH M11 Protocol Section 9 ADVERSE EVENTS, SERIOUS ADVERSE EVENTS, PRODUCT COMPLAINTS, PREGNANCY AND POSTPARTUM INFORMATION, AND SPECIAL SAFETY SITUATIONS"
* section[section09].code.text = "section9-adverse-events"
* section[section09]
  * entry only Reference(M11ReportSection09)
* section[section10].code.coding 1..1
* section[section10].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218625 "ICH M11 Protocol Section 10 STATISTICAL CONSIDERATIONS"
* section[section10].code.text = "section10-statistics"
* section[section10]
  * entry only Reference(M11ReportSection10)
* section[section11].code.coding 1..1
* section[section11].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218649 "ICH M11 Protocol Section 11 TRIAL OVERSIGHT AND OTHER GENERAL CONSIDERATIONS"
* section[section11].code.text = "section11-oversight"
* section[section11]
  * entry only Reference(M11ReportSection11)
* section[section12].code.coding 1..1
* section[section12].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218666 "ICH M11 Protocol Section 12 APPENDIX: SUPPORTING DETAILS"
* section[section12].code.text = "section12-supporting-details"
* section[section12]
  * entry only Reference(M11ReportSection12)
* section[section13].code.coding 1..1
* section[section13].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218670 "ICH M11 Protocol Section 13 APPENDIX: GLOSSARY OF TERMS AND ABBREVIATIONS"
* section[section13].code.text = "section13-glossary"
* section[section13]
  * entry only Reference(M11ReportSection13)
* section[section14].code.coding 1..1
* section[section14].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218671 "ICH M11 Protocol Section 14 APPENDIX: REFERENCES"
* section[section14].code.text = "section14-references"
* section[section14]
  * entry only Reference(M11ReportSection14)
