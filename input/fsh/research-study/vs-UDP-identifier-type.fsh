ValueSet: UDPIdentifierType
Id: udp-identifier-type
Title: "UDP Identifier Type Value Set"
Description: "These codes represent the types of identifier used in a study. This is a UDP specific value set. These are codes used in M11 but in the M11 Specification each code is associated with a distinct M11 attribute rather than being a classifier for a more general attribute. FHIR structures are designed to work with a repeating identifier attribute classified by an approriate terminology. This value set enables that by using NCIT codes to create a FHIR value set. This content was copied from https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-udp-identifier-type-vs.html."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* ^copyright = "Portions of this material derives from the ICH M11 Harmonised Guideline CeSHarP. The ICH M11 Harmonised Guideline CeSHarP is copyright ©2025+ International Committee on Harmonisation and is made available under license.\nCDISC publishes semantics for the ICH M11 protocol data elements and valid value sets. This terminology set is published and stored in the NCI Thesaurus Subset C217023 - ICH M11 Terminology (https://evsexplore.semantics.cancer.gov/evsexplore/subset/ncit/C217023)\nThe NCI Thesaurus is released under the CC BY 4.0 license\nFurther details at https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-udp-identifier-type-vs.html"
* $NCIt#C132351 "Sponsor Protocol Identifier"
* $NCIt#C218477 "Amendment Identifier"
* $NCIt#C218684 "EU Clinical Trial Register Number"
* $NCIt#C218685 "US FDA Investigational New Drug Application Number"
* $NCIt#C218686 "US FDA Investigational Device Exemption Application Number"
* $NCIt#C218687 "Japan Registry for Clinical Trials Number"
* $NCIt#C172240 "Clinicaltrials.gov Identifier"
* $NCIt#C218688 "NMPA IND Number"
* $NCIt#C218689 "WHO/UTN Number"
* $NCIt#C218690 "Other Regulatory or Clinical Trial Identifier"
* ^expansion.identifier = "urn:uuid:example-expansion-id"
* ^expansion.timestamp = "2026-10-02T00:00:00Z"
* ^expansion.contains[0].system = $NCIt
* ^expansion.contains[0].code = #C132351
* ^expansion.contains[0].display = "Sponsor Protocol Identifier"
* ^expansion.contains[1].system = $NCIt
* ^expansion.contains[1].code = #C218477
* ^expansion.contains[1].display = "Amendment Identifier"
* ^expansion.contains[2].system = $NCIt
* ^expansion.contains[2].code = #C218684
* ^expansion.contains[2].display = "EU Clinical Trial Register Number"
* ^expansion.contains[3].system = $NCIt
* ^expansion.contains[3].code = #C218685
* ^expansion.contains[3].display = "US FDA Investigational New Drug Application Number"
* ^expansion.contains[4].system = $NCIt
* ^expansion.contains[4].code = #C218686
* ^expansion.contains[4].display = "US FDA Investigational Device Exemption Application Number"
* ^expansion.contains[5].system = $NCIt
* ^expansion.contains[5].code = #C218687
* ^expansion.contains[5].display = "Japan Registry for Clinical Trials Number"
* ^expansion.contains[6].system = $NCIt
* ^expansion.contains[6].code = #C172240
* ^expansion.contains[6].display = "Clinicaltrials.gov Identifier"
* ^expansion.contains[7].system = $NCIt
* ^expansion.contains[7].code = #C218688
* ^expansion.contains[7].display = "NMPA IND Number"
* ^expansion.contains[8].system = $NCIt
* ^expansion.contains[8].code = #C218689
* ^expansion.contains[8].display = "WHO/UTN Number"
* ^expansion.contains[9].system = $NCIt
* ^expansion.contains[9].code = #C218690
* ^expansion.contains[9].display = "Other Regulatory or Clinical Trial Identifier"