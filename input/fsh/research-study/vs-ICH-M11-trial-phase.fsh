ValueSet: ICHM11TrialPhase
Id: ich-m11-trial-phase
Title: "ICH M11 Trial Phase Value Set"
Description: "Terminology associated with the trial phase value set codelist of the ICH M11 protocol template. This is ICH M11 Value Set C217045 drawn from the NCI Thesaurus and represented here in FHIR format. This content was copied from https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-m11-phase-vs.html."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* ^copyright = "Portions of this material derives from the ICH M11 Harmonised Guideline CeSHarP. The ICH M11 Harmonised Guideline CeSHarP is copyright ©2025+ International Committee on Harmonisation and is made available under license.\nCDISC publishes semantics for the ICH M11 protocol data elements and valid value sets. This terminology set is published and stored in the NCI Thesaurus Subset C217023 - ICH M11 Terminology (https://evsexplore.semantics.cancer.gov/evsexplore/subset/ncit/C217023)\nThe NCI Thesaurus is released under the CC BY 4.0 license\nFurther details at https://hl7.org/fhir/uv/clinical-study-protocol/2026May/en/ValueSet-m11-phase-vs.html"
* include $NCIt#C54721 "Early Phase 1 Trial"
* include $NCIt#C15600 "Phase I Trial"
* include $NCIt#C15693 "Phase I/II Trial"
* include $NCIt#C198366 "Phase I/II/III Trial"
* include $NCIt#C198367 "Phase I/III Trial"
* include $NCIt#C15601 "Phase II Trial"
* include $NCIt#C15694 "Phase II/III Trial"
* include $NCIt#C217024 "Phase II/III/IV Trial"
* include $NCIt#C15602 "Phase III Trial"
* include $NCIt#C217025 "Phase III/IV Trial"
* include $NCIt#C15603 "Phase IV Trial"