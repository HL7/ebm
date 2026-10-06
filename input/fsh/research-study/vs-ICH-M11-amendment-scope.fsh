ValueSet: ICHM11AmendmentScope
Id: ich-m11-amendment-scope
Title: "ICH M11 Amendment Scope Value Set"
Description: "Terminology associated with the amendment scope value set codelist of the ICH M11 protocol template. This is ICH M11 Value Set C217047 drawn from the NCI Thesaurus and represented here in FHIR format. The M11 guidance to 'leave blank' if not applicable has to be replaced by an explicit 'Not Applicable' This content was copied from https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-m11-amendment-scope-vs.html."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* ^copyright = "Portions of this material derives from the ICH M11 Harmonised Guideline CeSHarP. The ICH M11 Harmonised Guideline CeSHarP is copyright ©2025+ International Committee on Harmonisation and is made available under license.\nCDISC publishes semantics for the ICH M11 protocol data elements and valid value sets. This terminology set is published and stored in the NCI Thesaurus Subset C217023 - ICH M11 Terminology (https://evsexplore.semantics.cancer.gov/evsexplore/subset/ncit/C217023)\nThe NCI Thesaurus is released under the CC BY 4.0 license\nFurther details at https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-m11-amendment-scope-vs.html"
* include $NCIt#C68846 "Global"
* include $NCIt#C217026 "Not Global"
* include $NCIt#C48660 "Not Applicable"
* ^expansion.identifier = "set-by-m11-technical-specification"
* ^expansion.timestamp = "2026-10-02T00:00:00Z"
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[0].valueUri = "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl|26.09d"
* ^expansion.parameter[1].name = "used-codesystem"
* ^expansion.parameter[1].valueUri = "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl|26.09d"
* ^expansion.contains[0].system = $NCIt
* ^expansion.contains[0].code = #C68846
* ^expansion.contains[0].display = "Global"
* ^expansion.contains[1].system = $NCIt
* ^expansion.contains[1].code = #C217026
* ^expansion.contains[1].display = "Not Global"
* ^expansion.contains[2].system = $NCIt
* ^expansion.contains[2].code = #C48660
* ^expansion.contains[2].display = "Not Applicable