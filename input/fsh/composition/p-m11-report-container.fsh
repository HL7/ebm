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
* section contains titlepage 1..1 MS and sections 1..1 MS
* section[titlepage].title = "Title Page"
* section[titlepage].code.coding 1..1
* section[titlepage].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C222769 "ICH M11 Protocol Section Title Page"
* section[titlepage].code.text = "section0-title-page"
* section[titlepage]
  * entry only Reference(StudyDesign)
* section[sections].title = "Sections 1-14"
* section[sections].code.text = "sections"
* section[sections]
  * entry only Reference(M11ReportSection01 or M11ReportSection02 or M11ReportSection03 or M11ReportSection04 or M11ReportSection05 or M11ReportSection06 or M11ReportSection07 or M11ReportSection08 or M11ReportSection09 or M11ReportSection10 or M11ReportSection11 or M11ReportSection12 or M11ReportSection13 or M11ReportSection14)
