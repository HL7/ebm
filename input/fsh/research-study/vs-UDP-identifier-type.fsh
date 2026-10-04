ValueSet: UDPIdentifierType
Id: udp-identifier-type
Title: "UDP Identifier Type Value Set"
Description: "These codes represent the types of identifier used in a study. This is a UDP specific value set. These are codes used in M11 but in the M11 Specification each code is associated with a distinct M11 attribute rather than being a classifier for a more general attribute. FHIR structures are designed to work with a repeating identifier attribute classified by an approriate terminology. This value set enables that by using NCIT codes to create a FHIR value set. This content was copied from https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-udp-identifier-type-vs.html."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* ^copyright = "Portions of this material derives from the ICH M11 Harmonised Guideline CeSHarP. The ICH M11 Harmonised Guideline CeSHarP is copyright ©2025+ International Committee on Harmonisation and is made available under license.\nCDISC publishes semantics for the ICH M11 protocol data elements and valid value sets. This terminology set is published and stored in the NCI Thesaurus Subset C217023 - ICH M11 Terminology (https://evsexplore.semantics.cancer.gov/evsexplore/subset/ncit/C217023)\nThe NCI Thesaurus is released under the CC BY 4.0 license\nFurther details at https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-udp-identifier-type-vs.html"
* include $NCIt#C132351 "Sponsor Protocol Identifier"
* include $NCIt#C218477 "Amendment Identifier"
* include $NCIt#C218684 "EU Clinical Trial Register Number"
* include $NCIt#C218685 "US FDA Investigational New Drug Application Number"
* include $NCIt#C218686 "US FDA Investigational Device Exemption Application Number"
* include $NCIt#C218687 "Japan Registry for Clinical Trials Number"
* include $NCIt#C172240 "Clinicaltrials.gov Identifier"
* include $NCIt#C218688 "NMPA IND Number"
* include $NCIt#C218689 "WHO/UTN Number"
* include $NCIt#C218690 "Other Regulatory or Clinical Trial Identifier"