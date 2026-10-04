ValueSet: UDPPartyRoleType
Id: udp-party-role-type
Title: "UDP Party Role Type Value Set"
Description: "These codes represent the types of role ResearchStudy.associatedParty can play. This is required for the mechanism used by FHIR for associating one entity with another. This is a UDP specific value set and uses NCIT codes to create an appropriate FHIR value set. This content was copied from https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-udp-party-role-type-vs.html."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* ^copyright = "Portions of this material derives from the ICH M11 Harmonised Guideline CeSHarP. The ICH M11 Harmonised Guideline CeSHarP is copyright ©2025+ International Committee on Harmonisation and is made available under license.\nCDISC publishes semantics for the ICH M11 protocol data elements and valid value sets. This terminology set is published and stored in the NCI Thesaurus Subset C217023 - ICH M11 Terminology (https://evsexplore.semantics.cancer.gov/evsexplore/subset/ncit/C217023)\nThe NCI Thesaurus is released under the CC BY 4.0 license\nFurther details at https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-udp-party-role-type-vs.html"
* ^expansion.identifier = "urn:uuid:example-expansion-id"
* ^expansion.timestamp = "2026-10-02T00:00:00Z"
* expansion.contains[0]  =  $NCIt#C70793 "Clinical Study Sponsor"
* expansion.contains[1]  =  $NCIt#C215670 "Local Legal Sponsor"
* expansion.contains[2]  =  $NCIt#C71136 "Regulatory Application Sponsor"
* expansion.contains[3]  =  $NCIt#C142679 "Secondary Sponsor"
* expansion.contains[4]  =  $NCIt#C215669 "Study Co-Sponsor"
* expansion.contains[5]  =  $NCIt#C93478 "Study Legal Sponsor"
* expansion.contains[6]  =  $NCIt#C156625 "Device Manufacturer"
* expansion.contains[7]  =  $NCIt#C51876 "Sponsor Medical Expert" 