// Workaround for CPGonFHIR snapshots being based on FHIR R4,
// By generating the profiles via sushi based on FHIR R5, the R5 resources are used,
// which is required for CPGonEBMonFHIR.
// Auto-generated using GoFSH v1.6.4 (via FSH Online)
// Actually required because sushi could not find this extension based on its URL
Extension: StrengthOfRecommendation
Id: cqf-strengthOfRecommendation
Title: "strengthOfRecommendation"
Description: "The strength of the recommendation assigned to this reference. The code system used specifies the rating scale used to rate this recommendation while the code specifies the actual recommendation rating (represented as a coded value) associated with this recommendation."
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
* . ^short = "The strength of the recommendation"
* . ^definition = "The strength of the recommendation assigned to this reference. The code system used specifies the rating scale used to rate this recommendation while the code specifies the actual recommendation rating (represented as a coded value) associated with this recommendation."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from StrengthOfRecommendationRating (example)
* value[x] ^binding.extension[0].url = "http://hl7.org/fhir/build/StructureDefinition/binding-definition"
* value[x] ^binding.extension[=].valueString = "A rating system that describes the strength of the recommendation, such as the GRADE, DynaMed, or HGPS systems."
* value[x] ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* value[x] ^binding.extension[=].valueString = "StrengthOfRecommendationRating"
