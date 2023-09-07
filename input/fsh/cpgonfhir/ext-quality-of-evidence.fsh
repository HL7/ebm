// Workaround for CPGonFHIR snapshots being based on FHIR R4,
// By generating the profiles via sushi based on FHIR R5, the R5 resources are used,
// which is required for CPGonEBMonFHIR.
// Auto-generated using GoFSH v1.6.4 (via FSH Online)
// Actually required because sushi could not find this extension based on its URL
Extension: QualityOfEvidence
Id: cqf-qualityOfEvidence
Title: "qualityOfEvidence"
Description: "The quality of the evidence described. The code system used specifies the quality scale used to grade this evidence source while the code specifies the actual quality score (represented as a coded value) associated with the evidence."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2015-05-30"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/dss"
* . 0..1
* . ^short = "The quality of the evidence"
* . ^definition = "The quality of the evidence described. The code system used specifies the quality scale used to grade this evidence source while the code specifies the actual quality score (represented as a coded value) associated with the evidence."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from QualityOfEvidenceRating (example)
* value[x] ^binding.extension[0].url = "http://hl7.org/fhir/build/StructureDefinition/binding-definition"
* value[x] ^binding.extension[=].valueString = "A rating system that describes the quality of evidence such as the GRADE, DynaMed, or Oxford CEBM systems."
* value[x] ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* value[x] ^binding.extension[=].valueString = "QualityOfEvidenceRating"
