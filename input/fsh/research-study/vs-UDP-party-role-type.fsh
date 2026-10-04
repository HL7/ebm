ValueSet: UDPPartyRoleType
Id: udp-party-role-type
Title: "UDP Party Role Type Value Set"
Description: "These codes represent the types of role ResearchStudy.associatedParty can play. This is required for the mechanism used by FHIR for associating one entity with another. This is a UDP specific value set and uses NCIT codes to create an appropriate FHIR value set. This content was copied from https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-udp-party-role-type-vs.html."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* ^copyright = "Portions of this material derives from the ICH M11 Harmonised Guideline CeSHarP. The ICH M11 Harmonised Guideline CeSHarP is copyright ©2025+ International Committee on Harmonisation and is made available under license.\nCDISC publishes semantics for the ICH M11 protocol data elements and valid value sets. This terminology set is published and stored in the NCI Thesaurus Subset C217023 - ICH M11 Terminology (https://evsexplore.semantics.cancer.gov/evsexplore/subset/ncit/C217023)\nThe NCI Thesaurus is released under the CC BY 4.0 license\nFurther details at https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-udp-party-role-type-vs.html"
* include $NCIt#C70793 "Clinical Study Sponsor"
* include $NCIt#C215670 "Local Legal Sponsor"
* include $NCIt#C71136 "Regulatory Application Sponsor"
* include $NCIt#C142679 "Secondary Sponsor"
* include $NCIt#C215669 "Study Co-Sponsor"
* include $NCIt#C93478 "Study Legal Sponsor"
* include $NCIt#C156625 "Device Manufacturer"
* include $NCIt#C51876 "Sponsor Medical Expert" 