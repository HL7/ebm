ValueSet: ICHM11AmendmentDetailsStatement
Id: ich-m11-amendment-details-statement
Title: "ICH M11 Amendment Details Statement Value Set"
Description: "Terminology associated with whether or not a protocol has been amended. This is ICH M11 Value Set C217274 drawn from the NCI Thesaurus and represented here in FHIR format. This content was copied from https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-m11-amendment-details-statement-vs.html."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* ^copyright = "Portions of this material derives from the ICH M11 Harmonised Guideline CeSHarP. The ICH M11 Harmonised Guideline CeSHarP is copyright ©2025+ International Committee on Harmonisation and is made available under license.\nCDISC publishes semantics for the ICH M11 protocol data elements and valid value sets. This terminology set is published and stored in the NCI Thesaurus Subset C217023 - ICH M11 Terminology (https://evsexplore.semantics.cancer.gov/evsexplore/subset/ncit/C217023)\nThe NCI Thesaurus is released under the CC BY 4.0 license\nFurther details at https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-m11-amendment-details-statement-vs.html"
* include $NCIt#C218485 "Protocol Not Amended"
* include $NCIt#C218486 "First Protocol Amendment"
* include $NCIt#C218487 "Protocol Previously Amended, Details Presented"
* include $NCIt#C218488 "Protocol Previously Amended See Summary of Changes Before the Table of Contents"
* ^expansion.identifier = "urn:uuid:example-expansion-id"
* ^expansion.timestamp = "2026-10-02T00:00:00Z"
* ^expansion.contains[0].system = $NCIt
* ^expansion.contains[0].code = #C218485
* ^expansion.contains[0].display = "Protocol Not Amended"
* ^expansion.contains[1].system = $NCIt
* ^expansion.contains[1].code = #C218486
* ^expansion.contains[1].display = "First Protocol Amendment"
* ^expansion.contains[2].system = $NCIt
* ^expansion.contains[2].code = #C218487
* ^expansion.contains[2].display = "Protocol Previously Amended, Details Presented"
* ^expansion.contains[3].system = $NCIt
* ^expansion.contains[3].code = #C218488
* ^expansion.contains[3].display = "Protocol Previously Amended See Summary of Changes Before the Table of Contents"