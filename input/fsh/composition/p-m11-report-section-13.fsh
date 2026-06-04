Profile: M11ReportSection13
Parent: EvidenceReport
Id: m11-report-section-13
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection13 Profile is used for section 13 (Glossary) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains glossary 0..1
* category[glossary].coding 1..1
* category[glossary].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218670 "ICH M11 Protocol Section 13 APPENDIX: GLOSSARY OF TERMS AND ABBREVIATIONS"
* category[glossary].text = "section13-glossary"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains glossary 1..1 MS
* section[glossary].title = "13 APPENDIX: GLOSSARY OF TERMS AND ABBREVIATIONS"
* section[glossary].code.coding 1..1
* section[glossary].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218670 "ICH M11 Protocol Section 13 APPENDIX: GLOSSARY OF TERMS AND ABBREVIATIONS"
* section[glossary].code.text = "section13-glossary"
* section[glossary]
  * text 1..1
  * text ^comment = "Define abbreviations and other terms used in the protocol. A tabular presentation is common and may serve as the definition at first use."
  * entry only Reference(ValueSet or CodeSystem)